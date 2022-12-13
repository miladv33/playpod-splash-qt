import QtQuick
import QtMultimedia

Item {
    id: root
    anchors.fill: parent

    required property string url
    signal finihed()

    Rectangle {
        anchors.fill: parent
        color: "#202020"
    }

    Video {
        anchors.fill: parent
        fillMode: VideoOutput.PreserveAspectFit
        source: root.url
        Component.onCompleted: play()
        onStopped: root.finished()
    }
}
