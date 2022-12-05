#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QMediaPlayer>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/PlayPodSplash/main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);


    QMediaPlayer *player = new QMediaPlayer;


    player->setSource(QUrl::fromLocalFile(":/PlayPodSplash/splash.mp4"));
//    player->setVolume(10);
    player->play();

    return app.exec();
}
