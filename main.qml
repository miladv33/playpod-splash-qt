import QtQuick
import QtQuick.Window
import QtMultimedia

//Made by Adam Pedersen


Window {

    visibility: Window.FullScreen

    Video {
        id: video
        anchors.fill: parent
        source: "qrc:/splash.mp4"
        Component.onCompleted: {
            video.play()

        }
        onStopped: {
            console.log("Milad Milad Mohammad")
        }

    }

}
