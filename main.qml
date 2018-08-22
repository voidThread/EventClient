import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("EventClient")

    StackView {
        id: mainView
        anchors.fill: parent
        initialItem: EventList {}
    }
}
