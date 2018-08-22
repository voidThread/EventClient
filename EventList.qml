import QtQuick 2.11
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2

Page {
    id: root

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

            Rectangle {
                width: eventsList.width - eventsList.leftMargin - eventsList.rightMargin
                height: 40
                color: "grey"

                RowLayout {
                    Row {
                        Label {
                            id: date
                            Layout.alignment: parent
                            text: index
                        }
                    }

                    Row {
                        Label {
                            id: description
                            Layout.alignment: parent
                            text: index
                        }
                    }
                }
            }
        }
    }
}
