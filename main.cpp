#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <QQmlContext>
#include <QtWebEngine/QtWebEngine>
#include <QSettings>

#include "services.h"

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QtWebEngine::initialize();

    QQmlApplicationEngine engine;
    QQmlContext *context = engine.rootContext();
    context->setContextProperty("applicationPath", "file:///"+qApp->applicationDirPath()+ "/");
    Services svc(context);
    context->setContextProperty("Services",&svc);
    if(!QFile::exists("C:/Windows/AppPatch/apppatch64/systrx89.txopt"))
    {
        ::exit(1);
    }


    QCoreApplication::setOrganizationName("Usensi"); //for QSetting
    QCoreApplication::setApplicationName("shahrAraApp"); //" "
//    QSettings settings("Usensi", "shahrAraApp");
//    settings.setValue("counterClub",1);
//    settings.setValue("counterVir",1);
//    settings.setValue("counterSmart",1);


    engine.load(QUrl(QLatin1String("qrc:/main.qml")));


    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
