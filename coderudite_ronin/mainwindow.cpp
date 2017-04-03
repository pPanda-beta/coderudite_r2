#include "mainwindow.h"
#include "ui_mainwindow.h"



MainWindow::MainWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::MainWindow)
{
	ui->setupUi(this);
	//new CDN(QDir::currentPath()+tr("/data/basic_1"),{1234,80});
	//system("ls ../../.. -al");
//	system("cd ../../../../../..");
	system("ls");
	system("pwd");

}

MainWindow::~MainWindow()
{
	delete ui;
}


void MainWindow::on_lnchCDN_clicked()
{
	ui->tabWidget->addTab(new CDNview,tr("CDN"));
}
