import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3


Rectangle {
    id: homePageId

    property string fontColor: if(Settings.theme === "Day"){
                                   "#FFFFFF"
                               }
                               else{
                                   "#000000"
                               }

    Image {
        id: homePageBackgroundId

        source: if(Settings.theme === "Day"){
                    "Resources/Backgrounds/HomePageNight.png"
                }
                else{
                    "Resources/Backgrounds/HomePage.png"
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

    /////////////////////////////////////////////////////////////

    Text {
        id: text1
        x: 200
        y: 191
        width: 117
        height: 41
        color: "#2f4cc2"
        text: "+19"
        font.pixelSize: 33
        styleColor: "#1355c0"
        font.styleName: "Bold"
        font.family: "Verdana"

        Text {
            id: text2
            x: 69
            y: 0
            text: "o C"
            font.pixelSize: 15
            font.styleName: "Bold"
            font.family: "Arial"
        }
    }

    Dial {
        id: lampDialId
        x: 424
        y: 391
        width: 173
        height: 173
        from: 0
        to: 100
        value: 19

        Text {
            id: rgbTextId
            x: 25
            y: 51
            width: 124
            height: 114
            color: "#4957bf"
            text: Math.floor(lampDialId.value) + "%"
            font.pixelSize: 60
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            font.weight: Font.Bold
        }
    }

    Text {
        id: text3
        x: 216
        y: 309
        width: 70
        height: 42
        color: "#26c817"
        text: qsTr("30%")
        font.pixelSize: 30
        font.styleName: "Bold"
        font.family: "Verdana"
    }

    Slider {
        id: rSliderId
        x: 188
        y: 447
        from: 0
        to: 255
        value: 190

        onValueChanged: {
            rgbTextId.color = rgbToHex(Math.floor(rSliderId.value), Math.floor(gSliderId.value), Math.floor(bSliderId.value))
            console.log(rgbToHex(Math.floor(rSliderId.value), Math.floor(gSliderId.value), Math.floor(bSliderId.value)))
        }
    }

    Slider {
        id: gSliderId
        x: 188
        y: 486
        from: 0
        to: 255
        value: 30

        onValueChanged: {
            rgbTextId.color = rgbToHex(Math.floor(rSliderId.value), Math.floor(gSliderId.value), Math.floor(bSliderId.value))
            console.log(rgbToHex(Math.floor(rSliderId.value), Math.floor(gSliderId.value), Math.floor(bSliderId.value)))
        }
    }

    Slider {
        id: bSliderId
        x: 188
        y: 523
        from: 0
        to: 255
        value: 200

        onValueChanged: {
            rgbTextId.color = rgbToHex(Math.floor(rSliderId.value), Math.floor(gSliderId.value), Math.floor(bSliderId.value))
            console.log(rgbToHex(Math.floor(rSliderId.value), Math.floor(gSliderId.value), Math.floor(bSliderId.value)))
        }
    }

    function componentToHex(c) {
        var hex = c.toString(16);
        return hex.length === 1 ? "0" + hex : hex;
    }

    function rgbToHex(r, g, b) {
        return "#" + componentToHex(r) + componentToHex(g) + componentToHex(b);
    }

    SwitchDelegate {
        id: lampSitchId
        x: 583
        y: 377
        width: 138
        height: 50
        position: 1
        text: position === 1 ? "ON":"OFF"
        onToggled: {
            if(position === 1){
                rSliderId.enabled = true
                gSliderId.enabled = true
                bSliderId.enabled = true
                lampDialId.enabled = true
                rgbTextId.color = rgbToHex(Math.floor(rSliderId.value), Math.floor(gSliderId.value), Math.floor(bSliderId.value))
            }else {
                rSliderId.enabled = false
                gSliderId.enabled = false
                bSliderId.enabled = false
                lampDialId.enabled = false
                rgbTextId.color = "#575353"
            }
        }
    }

    Text {
        id: text4
        x: 162
        y: 454
        color: "#ff0000"
        text: qsTr("R")
        font.pixelSize: 20
        font.styleName: "Bold"
        font.family: "Verdana"
    }

    Text {
        id: text5
        x: 162
        y: 494
        color: "#23fb00"
        text: qsTr("G")
        font.pixelSize: 20
        font.styleName: "Bold"
        font.family: "Verdana"
    }

    Text {
        id: text6
        x: 162
        y: 531
        color: "#1000ff"
        text: qsTr("B")
        font.pixelSize: 20
        font.styleName: "Bold"
        font.family: "Verdana"
    }
    /////////////////////////// Clock //////////////////////////////////////
    Text {
        id: hoursId
        x: 385
        y: 26
        width: 89
        height: 79
        color: fontColor
        text: Settings.currentTime;
        font.pixelSize: 80
        font.family: "Arial"
    }
    ////////////////////////////// Weather ///////////////////////////////////////
    Text {
        id: dateId
        x: 428
        y: 156
        width: 120
        height: 29
        color: if(Settings.theme === "Day"){
                   "#b0aeae"
               }
               else{
                   "#4f4f4f"
               }
        text: Settings.currentDate;
        font.pixelSize: 13
    }

    Text {
        id: cityId
        x: 428
        y: 178
        width: 120
        height: 42
        color: if(Settings.theme === "Day"){
                   "#dbdbdb"
               }
               else{
                   "#272727"
               }
        text: qsTr("Shiraz")
        font.pixelSize: 22
    }

    Text {
        id: cityTemperatureId
        x: 417
        y: 209
        width: 188
        height: 76
        color: fontColor
        text: qsTr("13°C")
        font.pixelSize: 60
        font.styleName: "Bold"
        font.family: "Arial"
    }

    Image {
        id: wearherStatusIconId
        x: 424
        y: 273
        width: 25
        height: 25
        source: "Resources/Icon/rainyCloudMini.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: wearherStatusId
        x: 455
        y: 276
        width: 43
        height: 18
        color: if(Settings.theme === "Day"){
                   "#b0aeae"
               }
               else{
                   "#4f4f4f"
               }
        text: qsTr("Rainny")
        font.pixelSize: 12
    }



    Text {
        id: tipLine1Id
        x: 425
        y: 309
        width: 73
        height: 21
        color: if(Settings.theme === "Day"){
                   "#dbdbdb"
               }
               else{
                   "#272727"
               }
        text: qsTr("Heavy rain!")
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        font.family: "Verdana"
    }

    Text {
        id: tipLine2Id
        x: 411
        y: 330
        width: 225
        height: 32
        color: if(Settings.theme === "Day"){
                   "#dbdbdb"
               }
               else{
                   "#272727"
               }
        text: qsTr("Remember to bring an umbrella")
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        font.family: "Verdana"
    }

    Image {
        id: image
        x: 566
        y: 180
        width: 147
        height: 135
        source: "Resources/Icon/rainyCloud.png"
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
    Designer {
        D{i:0;autoSize:true;formeditorZoom:0.9;height:600;width:1024}D{i:2}D{i:3}D{i:4}D{i:5}
    D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}D{i:1}D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}
    D{i:18}D{i:20}D{i:19}D{i:22}D{i:21}D{i:23}D{i:24}D{i:25}D{i:26}D{i:27}D{i:28}D{i:29}
    D{i:30}D{i:31}D{i:32}D{i:33}D{i:34}D{i:35}D{i:36}D{i:37}D{i:38}D{i:39}D{i:40}D{i:41}
    D{i:42}D{i:43}D{i:44}
    }
    ##^##*/



