#ifndef ABSTRACTSERVER_H
#define ABSTRACTSERVER_H

#include <QObject>
#include "qhttpserver.h"
#include "qhttprequest.h"
#include "qhttpresponse.h"
#include <unordered_map>
#include <memory>
#include <vector>
#include <initializer_list>

using namespace std;

struct AbstractServer : public QObject
{

	AbstractServer();

//	unordered_map<quint16, shared_ptr<QHttpServer> > servers;
	unordered_map<quint16, QHttpServer * > servers;
	bool start(initializer_list<quint16> &);
//	virtual bool stop()=0;

	virtual void handleRequest(QHttpRequest *, QHttpResponse *)=0;

//non-copyable *and* non-movable
	AbstractServer(const AbstractServer &)=delete;
	AbstractServer&  operator=(const AbstractServer& )=delete;
};

#endif // ABSTRACTSERVER_H
