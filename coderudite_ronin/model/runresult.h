#ifndef RUNRESULT_H
#define RUNRESULT_H

#include <iostream>
#include <sstream>
#include "solution.h"
using namespace std;

class RunResult
{
public:
    ostringstream m_inp,m_oup;
    Solution m_src;
	chrono::duration<double> exec_time;
	RunResult();
};

#endif // RUNRESULT_H
