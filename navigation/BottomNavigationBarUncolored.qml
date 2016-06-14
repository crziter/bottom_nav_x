// ekke (Ekkehard Gentz) @ekkescorner
import QtQuick 2.6
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtGraphicalEffects 1.0
import "../common"

Pane {
    id: myBar
    property bool suppressInactiveLabels: navigationModel.length > 3
    property real activeOpacity: iconFolder == "black" ?  0.87 : 1.0
    property real inactiveOpacity: iconFolder == "black" ? 0.26 : 0.56
    property int activeFontSize: 14
    property int inactiveFontSize: 12
    // anchors.left: parent.left
    // anchors.right: parent.right
    leftPadding: 0
    rightPadding: 0
    HorizontalDivider{
        id: myBarDivider
    }
    height: 56 + myBarDivider.height
    RowLayout {
        focus: false
        anchors.top: myBarDivider.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 0
        Repeater {
            model: navigationModel
            NavigationButton {
                id: myButton
                isColored: true
            }
        } // repeater

    } // RowLayout


} // bottomNavigationBar
