import QtQuick 2.6

Rectangle {
    property alias mouseArea: mouseArea
    property alias text : lcd.text

    id : mainWindow
    width: 1680
    height: 1050
    color: "#000000"

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Row {
        anchors.centerIn: mainWindow
        width: 1259
        Lcd {
            id: lcd
            rotation: 90
            RotationAnimator {
                target: lcd;
                from: 0;
                to: 360;
                duration: 1500
                running: true
                loops: Animation.Infinite
            }

            SequentialAnimation {
                running: true
                loops: Animation.Infinite
                PropertyAnimation { target: lcd; properties: "scale"; from: 0.5; to: 1.0; duration: 500}
                PropertyAnimation { target: lcd; properties: "scale"; from: 1; to: 0.5; duration: 500}
            }
        }
    }
}
