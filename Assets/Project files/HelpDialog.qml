import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 1.3


Item {
    id : rootId
    function openDialog(){
        inputDialog.open()
    }

    property string fontColor: if(Settings.theme === "Day"){
                                   "#FFFFFF"
                               }
                               else{
                                   "#000000"
                               }

    property string textColor: "#E8E8E8"

    Dialog {
        id: inputDialog

        anchors.centerIn: parent

        width: 3*parent.width / 4 //Breaks the binding loop introduced in Qt 5.12.
        height: 3*parent.height / 4
        parent: Overlay.overlay

        focus: true
        modal: true
        title: "Help"
        standardButtons: Dialog.Close

        Text {
            anchors.centerIn: parent
            font.pointSize: 100
            color: fontColor
            text: qsTr("HELP!")
        }
    }
}
