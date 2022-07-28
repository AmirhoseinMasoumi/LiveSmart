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

        width: parent.width / 4 //Breaks the binding loop introduced in Qt 5.12.
        height: 3*parent.height / 5
        parent: Overlay.overlay

        focus: true
        modal: true
        title: "Setting"
        standardButtons: Dialog.Close | Dialog.Ok

        Column {
            anchors.fill: parent
            spacing: 20
            RowLayout {
                id: settingId
                width: parent.width

                ColumnLayout {
                    spacing: 40
                    Text {
                        text: qsTr("Night Mode")
                        color: fontColor
                        font.pointSize: 15
                    }
                    Text {
                        text: qsTr("Auto Lock")
                        color: fontColor
                        font.pointSize: 15
                    }
                }

                ColumnLayout {
                    spacing: 25
                    Switch {
                        id: nightModeId
                        position:if(Settings.theme === "Day"){
                                    nightModeId.position = 1
                                 }
                                 else{
                                    nightModeId.position = 0
                                 }
                    }
                    Switch {
                        id: autoLockId
                        text: "        "
                    }
                }
            }
            TextField{
                id: newPasswordId
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 7
                font.family: "Verdana"
                placeholderTextColor: fontColor
                placeholderText: "Enter your new password"
                echoMode: TextInput.PasswordEchoOnEdit
            }
            TextField{
                id: newPasswordCnfId
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 7
                font.family: "Verdana"
                placeholderTextColor: fontColor
                placeholderText: "Confirm your new password"
                echoMode: TextInput.PasswordEchoOnEdit
            }
        }

        onRejected: {
            console.log("Closed Configuration")
        }
        onAccepted: {
            if(newPasswordId.text !== ""){
                if(newPasswordId.text == newPasswordCnfId.text){
                    Settings.getPassword(newPasswordId.text)
                }
            }
            if(nightModeId.position === 1){
                Settings.getTheme("Day")
            }
            else{
                Settings.getTheme("Night")
            }
        }
    }
}
