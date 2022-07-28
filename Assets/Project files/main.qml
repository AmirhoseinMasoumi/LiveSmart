import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtQuick.VirtualKeyboard 2.15

ApplicationWindow {
    id: rootId
    width: 1024
    height: 600
    visible: true
    title: qsTr("Live Smart Dashboard")

//    screen: Qt.application.screens[1]
//    visibility: "FullScreen"

    Material.theme:if(Settings.theme === "Day"){
                      Material.Dark
                   }
                   else{
                      Material.Light
                   }
    Material.accent:if(Settings.theme === "Day"){
                        Material.DeepOrange
                     }
                     else{
                        Material.DeepPurple
                     }
    Material.primary:if(Settings.theme === "Day"){
                        Material.BlueGrey
                     }
                     else{
                        Material.LightBlue
                     }


    StackView {
        id: mStackId
        anchors.fill: parent
        initialItem: PasswordPage {}

        onCurrentItemChanged: {

        }
    }

    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: rootId.height
        width: rootId.width

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: rootId.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }
}
