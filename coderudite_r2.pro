TEMPLATE = subdirs

SUBDIRS += \
	coderudite_ronin \
    RunTests

QMAKE_CXXFLAGS += -std=c++14

CONFIG -= c++11
