#include "services.h"
#include <QFile>
#include <QtCore>
#include <QQmlContext>
#include <QVariant>
#include <QTextStream>


Services::Services(QQmlContext *ctxt)
{
    m_ctxt = ctxt;
}

Services::~Services(){}

void Services::setDataSmartCity(QStringList data, int i)
{
    QString counter=QString::number(i);;

    QString filenam="formClub/Data"+counter;
    QString filename=filenam+".txt";
    QFile file( filename );
    QString name="نام و نام خانوادکی: ";
    QString startup="شماره تماس: ";
    QString context="شماره تلگرام: ";
    QString num="محصول مورد علاقه: ";

    if ( file.open(QIODevice::ReadWrite | QIODevice::Text) )
    {

        QTextStream stream( &file );

        stream.setCodec("UTF-8");
        stream << name<< endl;
        stream << data.at(0)<<endl;
        stream << startup << endl;
        stream << data.at(1)<<endl;
        stream << context<<endl;
        stream <<data.at(2)<<endl;
        stream << num<<endl;
        stream <<data.at(3)<<endl;
        stream <<data.at(4)<<endl;
        stream <<data.at(5)<<endl;


    }


}
void Services::setDataVirtual(QStringList data , int i)
{
    QString counter=QString::number(i);;

    QString filenam="formSmartCity/Data"+counter;
    QString filename=filenam+".txt";
    QFile file( filename );
    QString name="نام: ";
    QString num="شماره تلفن: ";
    QString idea="نظرات: ";
    if ( file.open(QIODevice::ReadWrite | QIODevice::Text) )
    {

        QTextStream stream( &file );

        stream.setCodec("UTF-8");
        stream << name<< endl;
        stream << data.at(0)<<endl;
        stream << num << endl;
        stream << data.at(1)<<endl;
        stream << idea<<endl;
        stream <<data.at(2)<<endl;
    }
}

QStringList Services::fillMenu()
{
    QString filename = "Menu.txt";
    QFile file(filename);

    QStringList line;

    if (file.open(QIODevice::ReadWrite | QIODevice::Text)) {
        QTextStream in(&file);
        while( !in.atEnd())
        {
            line.append(in.readLine());
            line.append(in.readLine());
        }
    }

    file.close();
    return line;
}

void Services::addToFile(QString menuName,int index,QStringList subMenuName)
{

    QString filename = "Menu.txt";
    QFile file(filename);

    QString line[100];
    int line_count=0;

    if (file.open(QIODevice::ReadWrite | QIODevice::Text)) {
        QTextStream in(&file);
        while( !in.atEnd())
        {
            line[line_count]=in.readLine();
            line_count++;
        }
        in << menuName << endl;
        in << index << endl;
    }

    file.close();
    ////////

    QString filename2 = QString::number(line_count/2)+".txt";
    QFile file2(filename2);
    if (file2.open(QIODevice::ReadWrite | QIODevice::Text)) {
        QTextStream stream2(&file2);
        for(int i=0;i<subMenuName.length();i++)
            stream2 << subMenuName[i] << endl;
    }
    file2.close();
}
