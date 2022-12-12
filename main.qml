import QtQuick
import QtQuick.Window
import QtMultimedia

//Made by Adam Pedersen


Window {
    visible: true
    width: 800
    height: 600

    Video {
        id: video
        width : 800
        height : 600
        source: "qrc:/splash.mp4"
        Component.onCompleted: {
            video.play()

        }
        onStopped: {
            console.log("Milad Milad Mohammad")
        }

    }

}
