import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    width: 300
    height: 200
    title: "Second Window"
    flags: Qt.Tool

    Rectangle {
        anchors.fill: parent
        color: "lightgreen"
        Label { anchors.centerIn: parent; text: "Hello from SecondWindow.qml!" }
    }
}
