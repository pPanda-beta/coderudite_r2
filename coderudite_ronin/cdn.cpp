#include "cdn.h"
#include <QDebug>

#include <fstream>
#include <iostream>
#include <map>

map<string,string> mime;



CDN::CDN(const QDir& wwwrt, initializer_list<quint16> portList)
{
	base=wwwrt;
	start(portList);

	if(mime.empty())
	{
		string ext,typ;
		ifstream k(MAC2STR(SITEROOT)+"/data/mime_types.txt"s);

		while( k.is_open() and not k.eof())
		{
			k>>ext>>typ;
			mime[ext]=typ;
		}
	}
}


void CDN::handleRequest(QHttpRequest *req, QHttpResponse *resp)
{

	qDebug()<<base.path()<<req->path()<<(req->path()==tr("/"));
	auto docname=base.path() + (req->path()==tr("/") ?tr("/index.html"):req->path()) ;

	QFile doc(docname);

	if(not doc.open(QFile::ReadOnly))
	{
		QByteArray body = "Sorry Not found";
		resp->setHeader("Content-Length", QString::number(body.size()));
		resp->writeHead(404);
		resp->end(body);
		return;
	}

	try {
		auto nm=docname.toStdString();
		auto ext=nm.substr(nm.find_last_of('.'));
		resp->setHeader("Content-Type",tr(mime[ext].data()));
	} catch (...) {
		resp->setHeader("Content-Type","application/octet-stream");
	}

	resp->setHeader("Content-Length", QString::number(doc.size()));
	resp->setHeader("Access-Control-Allow-Origin"," * ");
	resp->setHeader("Access-Control-Allow-Headers","GET,POST,PUT");
	resp->writeHead(200);
	resp->end(doc.readAll());
}


CDN::~CDN()
{
	for(auto &t:servers)
		t.second->close(),t.second->deleteLater();
}
