import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

Rectangle {
    id: devicesPageId

    Image {
        id: devicesPageBackgroundId

        source: if(Settings.theme === "Day"){
                    "Resources/Backgrounds/DevicesPageNight.png"
                }
                else{
                    "Resources/Backgrounds/DevicesPage.png"
                }

        Switch {
            id: pannelRouterId
            x: 824
            y: 373
            width: 50
            height: 28
        }

        Switch {
            id: pannelTvId
            x: 958
            y: 373
            width: 50
            height: 28
        }

        Switch {
            id: pannelMicrovaweId
            x: 824
            y: 490
            width: 50
            height: 28
        }

        Switch {
            id: pannelConditionerId
            x: 958
            y: 490
            width: 50
            height: 28
        }

        Image {
            id: userProfileId
            x: 765
            y: 47
            width: 50
            height: width
            source: "Resources/Icon/userProfile.png"
            fillMode: Image.PreserveAspectFit
        }

        ComboBox {
            id: usersID
            x: 824
            y: 47
            width: 192
            height: 50
            flat: false
            model: Settings.users
            onActivated: {
                console.log("[" + currentIndex + "] " + currentText + " Is Selected")
            }
        }

        SwitchDelegate {
            id: securityAlarmSwitchId
            x: 805
            y: 217
            scale: 1.5
            text: position === 1 ? "Alarm is ON":"Alarm is OFF"
        }
    }

    MouseArea {
        id: homePageButton
        x: 0
        y: 156
        width: 112
        height: 39
        onClicked: {
            mStackId.pop()
            mStackId.push("qrc:/HomePage.qml")
        }
    }

    MouseArea {
        id: musicPageButton
        x: 0
        y: 208
        width: 112
        height: 39
        onClicked: {
            mStackId.pop()
            mStackId.push("qrc:/MusicPage.qml")
        }
    }

    MouseArea {
        id: securityPageButton
        x: 0
        y: 260
        width: 112
        height: 39
        onClicked: {
            mStackId.pop()
            mStackId.push("qrc:/SecurityPage.qml")
        }
    }

    MouseArea {
        id: temperatourePageButton
        x: 0
        y: 309
        width: 112
        height: 39
        onClicked: {
            mStackId.pop()
            mStackId.push("qrc:/TemperatourePage.qml")
        }
    }

    MouseArea {
        id: devicesPageButton
        x: 0
        y: 359
        width: 112
        height: 39
        onClicked: {
            mStackId.pop()
            mStackId.push("qrc:/DevicesPage.qml")
        }
    }

    MouseArea {
        id: membersPageButton
        x: 0
        y: 404
        width: 112
        height: 39
        onClicked: {
            mStackId.pop()
            mStackId.push("qrc:/MembersPage.qml")
        }
    }

    MouseArea {
        id: exitButton
        x: 35
        y: 540
        width: 43
        height: 43
        onClicked: {
            mStackId.pop()
            mStackId.push("qrc:/PasswordPage.qml")
        }
    }

    Image {
        id: settingDialogIconId
        x: 987
        y: 7
        width: 30
        height: width
        source: "Resources/Icon/settingIcon.png"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                settingDialogId.openDialog();
            }
        }
    }

    SettingDialoge{
        id:settingDialogId
    }

    Image {
        id: helpDialogIconId
        x: 2
        y: 578
        width: 20
        height: width
        source: "Resources/Icon/helpIcon.png"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                helpDialogId.openDialog();
            }
        }
    }

    HelpDialog{
        id: helpDialogId
    }


//////////////////////////////////////////////////////////////////////////////////////////

    SwitchDelegate {
        id: switchId1
        x: 263
        y: 26
        width: 138
        height: 50
        text: position === 1 ? "ON":"OFF"
    }

    SwitchDelegate {
        id: switchId2
        x: 574
        y: 26
        width: 138
        height: 50
        text: position === 1 ? "ON":"OFF"
    }

    SwitchDelegate {
        id: switchId3
        x: 263
        y: 233
        width: 138
        height: 50
        text: position === 1 ? "ON":"OFF"
    }

    SwitchDelegate {
        id: switchId4
        x: 574
        y: 233
        width: 138
        height: 50
        text: position === 1 ? "ON":"OFF"
    }

    SwitchDelegate {
        id: switchId5
        x: 263
        y: 438
        width: 138
        height: 50
        text: position === 1 ? "ON":"OFF"
    }

    SwitchDelegate {
        id: switchId6
        x: 574
        y: 438
        width: 138
        height: 50
        text: position === 1 ? "ON":"OFF"
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.66;height:600;width:1024}D{i:2}D{i:3}D{i:1}D{i:4}
D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}
}
##^##*/
