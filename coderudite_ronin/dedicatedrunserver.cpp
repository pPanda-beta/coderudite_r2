#include "dedicatedrunserver.h"

DedicatedRunServer::DedicatedRunServer(const QDir& runrt, initializer_list<quint16> portlist)
{
	base = runrt;
	start(portlist);
}

template<typename T>
T deHexFilter(const T &v)
{
	T org_v;
	org_v.reserve(v.size());
	for(size_t i=0; i<v.size(); i++)
		if(v[i]!='%')
			org_v+=v[i];
		else
		{
			int c;
			sscanf(v.data()+i+1,"%2x",&c);
			org_v+=c;
			i+=2;
		}
	return org_v;
}

map<string,string> parsePOST(string req)
{
	const static regex reg("[&]+");
	replace(req.begin(), req.end(), '+', ' ');

	map<string,string> parsed_req;

	for(sregex_token_iterator iter(begin(req),end(req),reg,-1),end ; iter!=end; ++iter)
	{
		string &&t=*iter;

		auto m=t.find_first_of('=');
		if(m==string::npos || m>=t.size()-1)
			parsed_req[t.substr(0,m)]="";
		else
			parsed_req[t.substr(0,m)]=deHexFilter(t.substr(m+1));
	}
	return parsed_req;
}


void DedicatedRunServer::handleRequest(QHttpRequest *req, QHttpResponse *resp)
{
	req->storeBody();
	connect(req, &QHttpRequest::end, [=]
	{
		string form_data = req->body().toStdString();
		auto &&fields = parsePOST(form_data);

		Solution sol(fields["source"], fields["type"]);
		Run run(sol);
		RunResult result = run.execute(fields["inp"], 1500);


		static QString statusToString[] = { "SUCC", "CTE", "RTE", "TLE", "ERR" };

		QJsonObject resultJSON
		{
			{ "status", statusToString[result.status]},
			{ "src", result.m_src.getSource().data() },
			{ "input_data", result.m_inp.str().data() },
			{ "output_data", result.m_oup.str().data()},
			{ "errors", result.m_err.str().data() }
		};

		QByteArray doc = QJsonDocument(resultJSON).toJson();
		resp->setHeader("Content-Length", QString::number(doc.size()));
		resp->setHeader("Access-Control-Allow-Origin"," * ");
		resp->setHeader("Access-Control-Allow-Headers","GET,POST,PUT");
		resp->writeHead(200);
		resp->end(doc);
	});
}

DedicatedRunServer::~DedicatedRunServer()
{
	for(auto &t:servers)
		t.second->close(),t.second->deleteLater();
}

