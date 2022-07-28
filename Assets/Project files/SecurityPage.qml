import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

Rectangle {
    id: securityPageId
    Image {
        id: securityPageBackgroundId

        source: if(Settings.theme === "Day"){
                    "Resources/Backgrounds/SecurityPageNight.png"
                }
                else{
                    "Resources/Backgrounds/SecurityPage.png"
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


/////////////////////////////////////////////////////////////////////

    Image {
        id: camera1Id
        x: 129
        y: 54
        width: 287
        height: 161
        source: "Resources/camera/camera1.png"
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onPressAndHold: {
                console.log("Pressed Cmaera 1")
                securityPageId.state = "camera1Frame"
            }
            onClicked: {
                securityPageId.state = "normalBase"
            }
        }
    }

    Image {
        id: camera2Id
        x: 443
        y: 54
        width: 287
        height: 161
        source: "Resources/camera/camera2.png"
        MouseArea {
            anchors.fill: parent
            onPressAndHold: {
                console.log("Pressed Cmaera 2")
                securityPageId.state = "camera2Frame"
            }
            onClicked: {
                securityPageId.state = "normalBase"
            }
        }
    }

    Image {
        id: camera3Id
        x: 129
        y: 246
        width: 287
        height: 161
        source: "Resources/camera/camera3.png"
        MouseArea {
            anchors.fill: parent
            onPressAndHold: {
                console.log("Pressed Cmaera 3")
                securityPageId.state = "camera3Frame"
            }
            onClicked: {
                securityPageId.state = "normalBase"
            }
        }
    }

    BusyIndicator {
        id: camera4BusyIndicatorID
        x: 552
        y: 296
        width: 69
        height: 61
    }

    states: [
        State {
            name: "normalBase"
            PropertyChanges {
                target: camera1Id
                visible: true
            }
            PropertyChanges {
                target: camera2Id
                visible: true
            }
            PropertyChanges {
                target: camera3Id
                visible: true
            }
            PropertyChanges {
                target: camera4BusyIndicatorID
                visible: true
            }
            PropertyChanges {
                target: camera1Id
                x: 129
                y: 54
            }
            PropertyChanges {
                target: camera2Id
                width: 287
                height: 161
                x: 443
                y: 54
            }
            PropertyChanges {
                target: camera3Id
                width: 287
                height: 161
                x: 129
                y: 246
            }
            PropertyChanges {
                target: camera4BusyIndicatorID
                x: 552
                y: 296
            }
        },
        State {
            name: "camera1Frame"
            PropertyChanges {
                target: camera2Id
                visible: false
            }
            PropertyChanges {
                target: camera3Id
                visible: false
            }
            PropertyChanges {
                target: camera4BusyIndicatorID
                visible: false
            }
            PropertyChanges {
                target: camera1Id
                x: 129
                y: 54
                width: 601
                height: 353
            }
        },
        State {
            name: "camera2Frame"
            PropertyChanges {
                target: camera1Id
                visible: false
            }
            PropertyChanges {
                target: camera3Id
                visible: false
            }
            PropertyChanges {
                target: camera4BusyIndicatorID
                visible: false
            }
            PropertyChanges {
                target: camera2Id
                x: 129
                y: 54
                width: 601
                height: 353
            }
        },
        State {
            name: "camera3Frame"
            PropertyChanges {
                target: camera1Id
                visible: false
            }
            PropertyChanges {
                target: camera2Id
                visible: false
            }
            PropertyChanges {
                target: camera4BusyIndicatorID
                visible: false
            }
            PropertyChanges {
                target: camera3Id
                x: 129
                y: 54
                width: 601
                height: 353
            }
        }
    ]

    transitions: Transition {
        from: "*"
        to: "*"
        NumberAnimation {
            properties: "visible"
            duration: 200
        }
        NumberAnimation {
            properties: "width"
            duration: 50
        }
        NumberAnimation {
            properties: "height"
            duration: 50
        }
    }



    Rectangle {
        id: rectangle
        x: 129
        y: 427
        width: 175
        height: 73
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#ffffff"
               }
        radius: 22

        SwitchDelegate {
            id: windowLockSwitch1Id
            x: 14
            y: -1
            width: 161
            height: 41
            text: "UNLOCK"
        }

        Text {
            id: windowText1Id
            x:14
            y:41
            width: 100
            height: 24
            text: qsTr("Front Door")
            color: "#555555"
            font.pointSize: 13
            font.bold: true
        }
    }

    Rectangle {
        id: rectangle2
        x: 340
        y: 427
        width: 175
        height: 73
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#ffffff"
               }
        radius: 22

        SwitchDelegate {
            id: windowLockSwitch2Id
            x: 14
            y: 0
            width: 161
            height: 41
            text: position === 1 ? "LOCK":"UNLOCK"
        }

        Text {
            id: windowText2Id
            x:14
            y:41
            width: 100
            height: 24
            text: qsTr("Back Door")
            color: "#555555"
            font.pointSize: 13
            font.bold: true
        }
    }

    Rectangle {
        id: rectangle3
        x: 549
        y: 427
        width: 175
        height: 73
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#ffffff"
               }
        radius: 22

        SwitchDelegate {
            id: windowLockSwitch3Id
            x: 14
            y: -1
            width: 161
            height: 41
            text: position === 1 ? "LOCK":"UNLOCK"
        }

        Text {
            id: windowText3Id
            x:14
            y:41
            width: 100
            height: 24
            text: qsTr("Safe")
            color: "#555555"
            font.pointSize: 13
            font.bold: true
        }
    }

    Rectangle {
        id: rectangle4
        x: 129
        y: 510
        width: 175
        height: 73
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#ffffff"
               }
        radius: 22

        SwitchDelegate {
            id: windowLockSwitch4Id
            x: 14
            y: -1
            width: 161
            height: 41
            text: position === 1 ? "LOCK":"UNLOCK"
        }

        Text {
            id: windowText4Id
            x:14
            y:41
            width: 100
            height: 24
            text: qsTr("Window 1")
            color: "#555555"
            font.pointSize: 13
            font.bold: true
        }
    }

    Rectangle {
        id: rectangle5
        x: 339
        y: 510
        width: 175
        height: 73
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#ffffff"
               }
        radius: 22

        SwitchDelegate {
            id: windowLockSwitch5Id
            x: 14
            y: -1
            width: 161
            height: 41
            text: position === 1 ? "LOCK":"UNLOCK"
        }

        Text {
            id: windowText5Id
            x:14
            y:41
            width: 100
            height: 24
            text: qsTr("Window 2")
            color: "#555555"
            font.pointSize: 13
            font.bold: true
        }
    }

    Rectangle {
        id: rectangle6
        x: 549
        y: 512
        width: 175
        height: 73
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#ffffff"
               }
        radius: 22

        SwitchDelegate {
            id: windowLockSwitch6Id
            x: 14
            y: -1
            width: 161
            height: 41
            text: position === 1 ? "LOCK":"UNLOCK"
        }

        Text {
            id: windowText6Id
            x:14
            y:41
            width: 100
            height: 24
            text: qsTr("Window 3")
            color: "#555555"
            font.pointSize: 13
            font.bold: true
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}
D{i:11}D{i:1}D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:20}D{i:19}D{i:22}
D{i:21}D{i:24}D{i:23}D{i:25}D{i:55}D{i:56}D{i:54}D{i:58}D{i:59}D{i:57}D{i:61}D{i:62}
D{i:60}D{i:64}D{i:65}D{i:63}D{i:67}D{i:68}D{i:66}D{i:70}D{i:71}D{i:69}
}
##^##*/
