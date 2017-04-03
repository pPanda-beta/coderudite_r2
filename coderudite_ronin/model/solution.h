#ifndef SOLUTION_H
#define SOLUTION_H

#include <string>
using namespace std;

class Solution
{
	string m_src;
public:
	Solution(string src="");
	virtual string getSource();
};

#endif // SOLUTION_H
