#include "run.h"
#include <QDebug>

map<string, function<void(Solution &, QProcess&)>> prepare;

Run::Run(Solution src, string type):m_src(src)
{
	prepare[type](m_src,m_handle);
}

RunResult Run::execute(string inp, int ms)
{
	RunResult result;
	result.m_src = m_src;
	result.m_inp.str(inp);

	auto start_time = chrono::system_clock::now();

	m_handle.start();
	m_handle.waitForStarted();

	m_handle.write(inp.data());
	m_handle.closeWriteChannel();

	m_handle.waitForFinished();
	auto end_time = chrono::system_clock::now();

	if(m_handle.state() == QProcess::Running)
		m_handle.terminate();

	result.m_oup.str(m_handle.readAll().toStdString());

	result.exec_time = end_time - start_time;
	return result;
}


void saveToFile(string filename, Solution &src)
{
	QFile file( filename.data() );
	if ( file.open(QIODevice::ReadWrite) )
		file.write(src.getSource().data());
}

void prepareGcc(Solution &src, QProcess &run_process)
{
	saveToFile("src.c", src);

	QProcess compile;
	compile.start("gcc", QStringList()<<"src.c"<<"-o"<<"src.out");
	if(!compile.waitForFinished())
	{
		// CT error
	}
	run_process.setProgram("./src.out");
}

void prepareJava(Solution &src, QProcess &run_process)
{
	saveToFile("Main.java",src);
	QProcess compile;
	compile.start("javac", QStringList()<<"Main.java");
	if(!compile.waitForFinished())
	{
		// CT error
	}
	run_process.setProgram("java");
	run_process.setArguments(QStringList()<<"Main");
}

int r=[]()
{
	prepare["c"]=prepareGcc;
	prepare["java"]=prepareJava;
	return 0;
}();
