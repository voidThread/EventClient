import QtQuick 2.11
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2

Page {
    id: root

    property date currentDate: new Date()

    header: ToolBar {
        Material.primary: Material.Red

        RowLayout {
            anchors.fill: parent

            ToolButton {
                height: parent.height
                width: parent.height
    //TODO need to simplify - make one rectangle and parametrize height
                Rectangle {
                    color: "black"
                    antialiasing: true
                    width: parent.width -10
                    height: 2
                    anchors.horizontalCenter: parent.horizontalCenter
                    y: parent.height / 3
                }

                Rectangle {
                    color: "black"
                    antialiasing: true
                    width: parent.width -10
                    height: 2
                    anchors.horizontalCenter: parent.horizontalCenter
                    y: (parent.height / 3) + (parent.height / 3)
                }

                Rectangle {
                    color: "black"
                    antialiasing: true
                    width: parent.width -10
                    height: 2
                    anchors.horizontalCenter: parent.horizontalCenter
                    y: parent.height / 2
                }
            }

            Label {
                text: qsTr("Events")
                font.pixelSize: 20
                Layout.fillWidth: true
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
            }

            ToolButton {
                height: parent.height
                width: parent.height
                text: qsTr("+")
                font.pixelSize: 20
            }
        }
    }

    ListView {
        id: eventsList
        anchors.fill: parent

        topMargin: 14
        bottomMargin: topMargin
        leftMargin: bottomMargin
        rightMargin: leftMargin

        spacing: 3

        model: 20
        delegate: ItemDelegate {
            RowLayout {
                Row {
                    id: date
                    spacing: 4

                    Rectangle {
                        width: Math.min(dateText.implicitWidth, eventsList.width)
                        height: 40
//TODO add changing colors through prior level (urgent, scheduled, high, low)
                        color: "grey"
                        Label {
                            id: dateText
                            text: currentDate.toLocaleDateString()
                            anchors.fill: parent
                        }
                    }

                }

                Row {
                    id: description
                    spacing: 4

                    Rectangle {
                        width: eventsList.width - eventsList.leftMargin - eventsList.rightMargin  - date.width
                        height: 40
                        color: "lightgrey"
                        Label {
                            id: descriptionText
                            text: index
                            anchors.fill: parent
                        }
                    }
                }
            }
        }
        ScrollBar.vertical: ScrollBar{}
    }
}
