#include <QString>
#include <QtTest>

#include "../coderudite_ronin/model/run.h"

class RunTestsTest : public QObject
{
	Q_OBJECT

public:
	RunTestsTest();

private Q_SLOTS:
	void testCSrc();
	void testJavaSrc();
};

RunTestsTest::RunTestsTest()
{
}

const char* sample_code_c = R"dhamak(
#include <stdio.h>
int main()
{
	printf("Hello World - c\n");
	return 0;
}
)dhamak";


const char* sample_code_java = R"chicken(
public class Main
{
   public static void main(String [] args){
	   System.out.println("Hello World - Java 8");
   }
}
)chicken";

string test_run(string source_code,string type)
{
	Solution s(source_code);
	Run r(s,type);
	RunResult result = r.execute("",1000);
//	qDebug()<<result.m_oup.str().data();
	return result.m_oup.str();
}

void RunTestsTest::testCSrc()
{
	QCOMPARE(test_run(sample_code_c,"c").data(), "Hello World - c\n") ;
}

void RunTestsTest::testJavaSrc()
{
	QCOMPARE(test_run(sample_code_java,"java").data(), "Hello World - Java 8\n") ;
}

QTEST_APPLESS_MAIN(RunTestsTest)

#include "tst_runteststest.moc"
