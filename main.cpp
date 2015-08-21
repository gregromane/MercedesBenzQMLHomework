#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "filehandler.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterSingletonType<fileHandler>("FileHandler", 1, 0, "FileHandler", fileHandlerCallBack);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
