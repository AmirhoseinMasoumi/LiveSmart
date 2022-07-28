import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

Rectangle {
    id: temperatourePageId
    Image {
        id: temperatourePageBackgroundId

        source: if(Settings.theme === "Day"){
                    "Resources/Backgrounds/TemperatourePageNight.png"
                }
                else{
                    "Resources/Backgrounds/TemperatourePage.png"
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
            id: securityAlertSwitchId
            x: 805
            y: 217
            scale: 1.5
            text: position === 1 ? "Alert is ON":"Alert is OFF"
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


/////////////////////////////////////////////////////////////////////////////

    Dial {
        id: tempDial1Id
        x: 180
        y: 39
        width: 216
        height: 216
        from: 10
        to: 60
        value: 30

        Text {
            id: text1
            x: 47
            y: 62
            width: 124
            height: 114
            color: "#3ac24a"
            text: Math.floor(tempDial1Id.value)
            font.pixelSize: 80
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.weight: Font.Bold
        }

        onValueChanged: {
            if(value < 21){
                text1.color = "#4957bf"
            }else if(value > 20 && value < 36){
                text1.color = "#3ac24a"
            }else {
                text1.color = "#f23918"
            }
        }
    }

    Rectangle {
        id: onOffButton1Id
        x: 156
        y: 227
        width: 50
        height: 50
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#ffffff"
               }

        MouseArea {
            anchors.fill: parent
            anchors.bottomMargin: 2
            onClicked: {
                if(onIcon1Id.visible === true) {
                    onIcon1Id.visible = false
                    offIcon1Id.visible = true
                    tempDial1Id.enabled = false

                    text1.color = "#5f5f61"
                }else if(offIcon1Id.visible === true){
                    onIcon1Id.visible = true
                    offIcon1Id.visible = false
                    tempDial1Id.enabled = true

                    if(tempDial1Id.value < 21){
                        text1.color = "#4957bf"
                    }else if(tempDial1Id.value > 20 && tempDial1Id.value < 36){
                        text1.color = "#3ac24a"
                    }else if(tempDial1Id.value > 35){
                        text1.color = "#f23918"
                    }
                }
            }
        }

        Image {
            id: onIcon1Id
            x: 0
            y: 0
            width: 50
            height: 50
            source: "Resources/Icon/onIcon.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: offIcon1Id
            x: 0
            y: 0
            width: 50
            height: 50
            visible: false
            source: "Resources/Icon/offIcon.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Text {
        id: text5
        x: 214
        y: 259
        width: 101
        height: 23
        color: "#3f3f3f"
        text: "Living Room"
        font.pixelSize: 17
        font.styleName: "Bold"
        font.family: "Verdana"
    }

    Dial {
        id: tempDial2Id
        x: 490
        y: 39
        width: 216
        height: 216
        from: 10
        to: 60
        value: 19

        Text {
            id: text2
            x: 47
            y: 62
            width: 124
            height: 114
            color: "#4957bf"
            text: Math.floor(tempDial2Id.value)
            font.pixelSize: 80
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.weight: Font.Bold
        }

        onValueChanged: {
            if(value < 21){
                text2.color = "#4957bf"
            }else if(value > 20 && value < 36){
                text2.color = "#3ac24a"
            }else {
                text2.color = "#f23918"
            }
        }
    }

    Rectangle {
        id: onOffButton2Id
        x: 465
        y: 227
        width: 50
        height: 50
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#ffffff"
               }

        MouseArea {
            anchors.fill: parent
            anchors.bottomMargin: 2
            onClicked: {
                if(onIcon2Id.visible === true) {
                    onIcon2Id.visible = false
                    offIcon2Id.visible = true
                    tempDial2Id.enabled = false

                    text2.color = "#5f5f61"
                }else if(offIcon2Id.visible === true){
                    onIcon2Id.visible = true
                    offIcon2Id.visible = false
                    tempDial2Id.enabled = true

                    if(tempDial2Id.value < 21){
                        text2.color = "#4957bf"
                    }else if(tempDial2Id.value > 20 && tempDial2Id.value < 36){
                        text2.color = "#3ac24a"
                    }else if(tempDial2Id.value > 35){
                        text2.color = "#f23918"
                    }
                }
            }
        }

        Image {
            id: onIcon2Id
            x: 0
            y: 0
            width: 50
            height: 50
            source: "Resources/Icon/onIcon.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: offIcon2Id
            x: 0
            y: 0
            width: 50
            height: 50
            visible: false
            source: "Resources/Icon/offIcon.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Text {
        id: text6
        x: 524
        y: 259
        width: 101
        height: 23
        color: "#3f3f3f"
        text: "Kitchen"
        font.pixelSize: 17
        font.styleName: "Bold"
        font.family: "Verdana"
    }

    Dial {
        id: tempDial3Id
        x: 180
        y: 330
        width: 216
        height: 216
        from: 10
        to: 60
        value: 25

        Text {
            id: text3
            x: 47
            y: 62
            width: 124
            height: 114
            color: "#3ac24a"
            text: Math.floor(tempDial3Id.value)
            font.pixelSize: 80
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.weight: Font.Bold
        }

        onValueChanged: {
            if(value < 21){
                text3.color = "#4957bf"
            }else if(value > 20 && value < 36){
                text3.color = "#3ac24a"
            }else {
                text3.color = "#f23918"
            }
        }
    }

    Rectangle {
        id: onOffButton3Id
        x: 156
        y: 518
        width: 50
        height: 50
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#ffffff"
               }

        MouseArea {
            anchors.fill: parent
            anchors.bottomMargin: 2
            onClicked: {
                if(onIcon3Id.visible === true) {
                    onIcon3Id.visible = false
                    offIcon3Id.visible = true
                    tempDial3Id.enabled = false

                    text3.color = "#5f5f61"
                }else if(offIcon3Id.visible === true){
                    onIcon3Id.visible = true
                    offIcon3Id.visible = false
                    tempDial3Id.enabled = true

                    if(tempDial3Id.value < 21){
                        text3.color = "#4957bf"
                    }else if(tempDial3Id.value > 20 && tempDial3Id.value < 36){
                        text3.color = "#3ac24a"
                    }else if(tempDial3Id.value > 35){
                        text3.color = "#f23918"
                    }
                }
            }
        }

        Image {
            id: onIcon3Id
            x: 0
            y: 0
            width: 50
            height: 50
            source: "Resources/Icon/onIcon.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: offIcon3Id
            x: 0
            y: 0
            width: 50
            height: 50
            visible: false
            source: "Resources/Icon/offIcon.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Text {
        id: text7
        x: 214
        y: 552
        width: 101
        height: 23
        color: "#3f3f3f"
        text: "Room 1"
        font.pixelSize: 17
        font.styleName: "Bold"
        font.family: "Verdana"
    }

    Dial {
        id: tempDial4Id
        x: 490
        y: 330
        width: 216
        height: 216
        from: 10
        to: 60
        value: 37

        Text {
            id: text4
            x: 47
            y: 62
            width: 124
            height: 114
            color: "#f23918"
            text: Math.floor(tempDial4Id.value)
            font.pixelSize: 80
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.weight: Font.Bold
        }

        onValueChanged: {
            if(value < 21){
                text4.color = "#4957bf"
            }else if(value > 20 && value < 36){
                text4.color = "#3ac24a"
            }else {
                text4.color = "#f23918"
            }
        }
    }

    Rectangle {
        id: onOffButton4Id
        x: 465
        y: 518
        width: 50
        height: 50
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#ffffff"
               }

        MouseArea {
            anchors.fill: parent
            anchors.bottomMargin: 2
            onClicked: {
                if(onIcon4Id.visible === true) {
                    onIcon4Id.visible = false
                    offIcon4Id.visible = true
                    tempDial4Id.enabled = false

                    text4.color = "#5f5f61"
                }else if(offIcon4Id.visible === true){
                    onIcon4Id.visible = true
                    offIcon4Id.visible = false
                    tempDial4Id.enabled = true

                    if(tempDial4Id.value < 21){
                        text4.color = "#4957bf"
                    }else if(tempDial4Id.value > 20 && tempDial4Id.value < 36){
                        text4.color = "#3ac24a"
                    }else if(tempDial4Id.value > 35){
                        text4.color = "#f23918"
                    }
                }
            }
        }

        Image {
            id: onIcon4Id
            x: 0
            y: 0
            width: 50
            height: 50
            source: "Resources/Icon/onIcon.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: offIcon4Id
            x: 0
            y: 0
            width: 50
            height: 50
            visible: false
            source: "Resources/Icon/offIcon.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Text {
        id: text8
        x: 524
        y: 552
        width: 101
        height: 23
        color: "#3f3f3f"
        text: "Room 2"
        font.pixelSize: 17
        font.styleName: "Bold"
        font.family: "Verdana"
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.1;height:480;width:640}D{i:1}D{i:2}D{i:3}D{i:4}
D{i:5}D{i:6}D{i:7}D{i:8}D{i:10}D{i:9}D{i:12}D{i:13}D{i:14}D{i:11}D{i:15}D{i:17}D{i:16}
D{i:19}D{i:20}D{i:21}D{i:18}D{i:22}D{i:24}D{i:23}D{i:26}D{i:27}D{i:28}D{i:25}D{i:29}
D{i:31}D{i:30}D{i:33}D{i:34}D{i:35}D{i:32}D{i:36}
}
##^##*/
