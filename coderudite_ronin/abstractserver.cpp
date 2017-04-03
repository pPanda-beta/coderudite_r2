#include "abstractserver.h"

AbstractServer::AbstractServer()
{

}


bool AbstractServer::start(initializer_list<quint16> &portList)
{

	for(auto &port:portList)
	{
		auto &ser=servers[port];
		if(not ser)
			ser->deleteLater();
		ser=new QHttpServer(this);
		ser->listen(port);
	//	connect(ser, SIGNAL(newRequest(QHttpRequest*, QHttpResponse*)),
	//			this, SLOT(handleRequest(QHttpRequest*, QHttpResponse*)));
		connect(ser,&QHttpServer::newRequest,this,&AbstractServer::handleRequest);
	}
	return true;
}
