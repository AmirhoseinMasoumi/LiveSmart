import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

Rectangle {
    id: passwordPageId

    property alias passwordPage:passwordPageId

    property string fontColor: if(Settings.theme === "Day"){
                                   "#FFFFFF"
                               }
                               else{
                                   "#000000"
                               }

    Image {
        id: passwordBackgroundId

        source: if(Settings.theme === "Day"){
                    "Resources/Backgrounds/PasswordsPageNight.png"
                }
                else{
                    "Resources/Backgrounds/PasswordsPage.png"
                }
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

    property int passwordEmpty: 1
    property string passwordCode: "1234"
    property int passwordLengh: 4

    Rectangle {
        id: oneId
        x: 553
        y: 149
        width: 81
        height: 87
        opacity: 0
        radius: 20
        color: "#b0b0b0"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                oneId.opacity = 0
                console.log("Clicked on 1")

                if(passwordLabTextleId.text.length !== passwordLengh){
                    passwordEmpty = 1
                    if(passwordEmpty === 1){
                        passwordLabTextleId.text = passwordLabTextleId.text + "1"
                    }else {
                        passwordLabTextleId.text = "Enter your password"
                    }
                }
            }
            onPressedChanged: {
                oneId.opacity = 0.3
            }
        }
    }

    Rectangle {
        id: twoId
        x: 670
        y: 149
        width: 81
        height: 87
        opacity: 0
        color: "#b0b0b0"
        radius: 20
        MouseArea {
            anchors.fill: parent
            onClicked: {
                twoId.opacity = 0
                console.log("Clicked on 2")

                if(passwordLabTextleId.text.length !== passwordLengh){
                    passwordEmpty = 1
                    if(passwordEmpty === 1){
                        passwordLabTextleId.text = passwordLabTextleId.text + "2"
                    }else {
                        passwordLabTextleId.text = "Enter your password"
                    }
                }
            }
            onPressedChanged: {
                twoId.opacity = 0.3
            }
        }
    }

    Rectangle {
        id: threeId
        x: 786
        y: 149
        width: 81
        height: 87
        opacity: 0
        color: "#b0b0b0"
        radius: 20
        MouseArea {
            anchors.fill: parent
            onClicked: {
                threeId.opacity = 0
                console.log("Clicked on 3")

                if(passwordLabTextleId.text.length !== passwordLengh){
                    passwordEmpty = 1
                    if(passwordEmpty === 1){
                        passwordLabTextleId.text = passwordLabTextleId.text + "3"
                    }else {
                        passwordLabTextleId.text = "Enter your password"
                    }
                }
            }
            onPressedChanged: {
                threeId.opacity = 0.3
            }
        }
    }

    Rectangle {
        id: fourId
        x: 553
        y: 257
        width: 81
        height: 87
        opacity: 0
        radius: 20
        color: "#b0b0b0"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                fourId.opacity = 0
                console.log("Clicked on 4")

                if(passwordLabTextleId.text.length !== passwordLengh){
                    passwordEmpty = 1
                    if(passwordEmpty === 1){
                        passwordLabTextleId.text = passwordLabTextleId.text + "4"
                    }else {
                        passwordLabTextleId.text = "Enter your password"
                    }
                }
            }
            onPressedChanged: {
                fourId.opacity = 0.3
            }
        }
    }

    Rectangle {
        id: fiveId
        x: 670
        y: 257
        width: 81
        height: 87
        opacity: 0
        color: "#b0b0b0"
        radius: 20
        MouseArea {
            anchors.fill: parent
            onClicked: {
                fiveId.opacity = 0
                console.log("Clicked on 5")

                if(passwordLabTextleId.text.length !== passwordLengh){
                    passwordEmpty = 1
                    if(passwordEmpty === 1){
                        passwordLabTextleId.text = passwordLabTextleId.text + "5"
                    }else {
                        passwordLabTextleId.text = "Enter your password"
                    }
                }
            }
            onPressedChanged: {
                fiveId.opacity = 0.3
            }
        }
    }

    Rectangle {
        id: sixId
        x: 786
        y: 257
        width: 81
        height: 87
        opacity: 0
        color: "#b0b0b0"
        radius: 20
        MouseArea {
            anchors.fill: parent
            onClicked: {
                sixId.opacity = 0
                console.log("Clicked on 6")

                if(passwordLabTextleId.text.length !== passwordLengh){
                    passwordEmpty = 1
                    if(passwordEmpty === 1){
                        passwordLabTextleId.text = passwordLabTextleId.text + "6"
                    }else {
                        passwordLabTextleId.text = "Enter your password"
                    }
                }
            }
            onPressedChanged: {
                sixId.opacity = 0.3
            }
        }
    }

    Rectangle {
        id: sevenId
        x: 553
        y: 359
        width: 81
        height: 87
        opacity: 0
        color: "#b0b0b0"
        radius: 20
        MouseArea {
            anchors.fill: parent
            onClicked: {
                sevenId.opacity = 0
                console.log("Clicked on 7")

                if(passwordLabTextleId.text.length !== passwordLengh){
                    passwordEmpty = 1
                    if(passwordEmpty === 1){
                        passwordLabTextleId.text = passwordLabTextleId.text + "7"
                    }else {
                        passwordLabTextleId.text = "Enter your password"
                    }
                }
            }
            onPressedChanged: {
                sevenId.opacity = 0.3
            }
        }
    }

    Rectangle {
        id: eightId
        x: 670
        y: 359
        width: 81
        height: 87
        opacity: 0
        color: "#b0b0b0"
        radius: 20
        MouseArea {
            anchors.fill: parent
            onClicked: {
                eightId.opacity = 0
                console.log("Clicked on 8")

                if(passwordLabTextleId.text.length !== passwordLengh){
                    passwordEmpty = 1
                    if(passwordEmpty === 1){
                        passwordLabTextleId.text = passwordLabTextleId.text + "8"
                    }else {
                        passwordLabTextleId.text = "Enter your password"
                    }
                }
            }
            onPressedChanged: {
                eightId.opacity = 0.3
            }
        }
    }

    Rectangle {
        id: nineId
        x: 786
        y: 359
        width: 81
        height: 87
        opacity: 0
        color: "#b0b0b0"
        radius: 20
        MouseArea {
            anchors.fill: parent
            onClicked: {
                nineId.opacity = 0
                console.log("Clicked on 9")

                if(passwordLabTextleId.text.length !== passwordLengh){
                    passwordEmpty = 1
                    if(passwordEmpty === 1){
                        passwordLabTextleId.text = passwordLabTextleId.text + "9"
                    }else {
                        passwordLabTextleId.text = "Enter your password"
                    }
                }
            }
            onPressedChanged: {
                nineId.opacity = 0.3
            }
        }
    }

    Rectangle {
        id: deleteId
        x: 553
        y: 460
        width: 87
        height: 87
        opacity: 0
        color: "#b0b0b0"
        radius: 20
        MouseArea {
            anchors.fill: parent
            onClicked: {
                deleteId.opacity = 0
                console.log("Clicked on Reset")
                passwordLabTextleId.text = ""
                passwordEmpty = 0
            }
            onPressedChanged: {
                deleteId.opacity = 0.3
            }
        }
    }

    Rectangle {
        id: zeroId
        x: 670
        y: 460
        width: 81
        height: 87
        opacity: 0
        color: "#b0b0b0"
        radius: 20
        MouseArea {
            anchors.fill: parent
            onClicked: {
                zeroId.opacity = 0
                console.log("Clicked on 0")

                if(passwordLabTextleId.text.length !== passwordLengh){
                    passwordEmpty = 1
                    if(passwordEmpty === 1){
                        passwordLabTextleId.text = passwordLabTextleId.text + "0"
                    }else {
                        passwordLabTextleId.text = "Enter your password"
                    }
                }
            }
            onPressedChanged: {
                zeroId.opacity = 0.3
            }
        }
    }

    Rectangle {
        id: enterId
        x: 786
        y: 460
        width: 86
        height: 87
        opacity: 0
        color: "#b0b0b0"
        radius: 20

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Clicked on Enter")
                enterId.opacity = 0
                if(passwordLabTextleId.text === Settings.password){
                    mStackId.pop()
                    mStackId.push("qrc:/HomePage.qml")
                }
                else{
                    wrondPasswordAnimId.restart()
                }
            }
            onPressedChanged: {
                enterId.opacity = 0.3
            }
        }
    }

    TextField {
        id: passwordLabTextleId
        x: 553
        y: 40
        width: 314
        height: 65
        color: fontColor
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 12
        font.family: "Verdana"
        placeholderText: "Enter your password"
        placeholderTextColor: if(Settings.theme === "Day"){
                                  "#d9d9d9"
                              }
                              else{
                                  "##3a3b3a"
                              }
        echoMode: TextInput.PasswordEchoOnEdit

        SequentialAnimation on x {
            id: wrondPasswordAnimId
            running: false
            PropertyAnimation { to: 583 ; duration: 100 ; easing.type: Easing.InOutQuad}
            PropertyAnimation { to: 523  ; duration: 150 ; easing.type: Easing.InOutQuad}
            PropertyAnimation { to: 553  ; duration: 100 ; easing.type: Easing.InOutQuad}
        }

        onEditingFinished: {
            console.log("Text: " + text)
        }
    }


    ///////////////////////// Clock //////////////////////////////////////


    Text {
        id: secondsId
        x: 60
        y: 80
        width: 89
        height: 79
        text: Settings.currentTime;
        font.pixelSize: 80
        font.family: "Arial"
        color: fontColor
    }
    //////////////////////////// Weather ///////////////////////////////////////

    Text {
        id: dateId
        x: 69
        y: 290
        width: 120
        height: 29
        color: if(Settings.theme === "Day"){
                   "#b0aeae"
               }
               else{
                   "#4f4f4f"
               }
        text: Settings.currentDate;
        font.pixelSize: 15
    }

    Text {
        id: cityId
        x: 69
        y: 312
        width: 120
        height: 42
        color: if(Settings.theme === "Day"){
                   "#dbdbdb"
               }
               else{
                   "#272727"
               }
        text: qsTr("Shiraz")
        font.pixelSize: 25
    }

    Text {
        id: cityTemperatureId
        x: 54
        y: 365
        width: 188
        height: 76
        color: fontColor
        text: qsTr("13°C")
        font.pixelSize: 70
        font.styleName: "Bold"
        font.family: "Arial"
    }

    Image {
        id: wearherStatusIconId
        x: 69
        y: 447
        width: 25
        height: 25
        source: "Resources/Icon/rainyCloudMini.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: wearherStatusId
        x: 96
        y: 450
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
        x: 74
        y: 494
        width: 73
        height: 21
        color: if(Settings.theme === "Day"){
                   "#dbdbdb"
               }
               else{
                   "#272727"
               }
        text: qsTr("Heavy rain!")
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        font.family: "Verdana"
    }

    Text {
        id: tipLine2Id
        x: 72
        y: 519
        width: 225
        height: 32
        color: if(Settings.theme === "Day"){
                   "#dbdbdb"
               }
               else{
                   "#272727"
               }
        text: qsTr("Remember to bring an umbrella")
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        font.family: "Verdana"
    }

    Image {
        id: image
        x: 225
        y: 323
        width: 174
        height: 160
        source: "Resources/Icon/rainyCloud.png"
        fillMode: Image.PreserveAspectFit
    }

    Switch {
        id: nightModeId
        x: 950
        y: 10
        position:if(Settings.theme === "Day"){
                    nightModeId.position = 1
                 }
                 else{
                    nightModeId.position = 0
                 }
        onPositionChanged: {
            if(nightModeId.position === 1){
                Settings.getTheme("Day")
            }
            else{
                Settings.getTheme("Night")
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.1;height:600;width:1024}D{i:1}D{i:3}D{i:2}D{i:5}
D{i:4}D{i:7}D{i:6}D{i:9}D{i:8}D{i:11}D{i:10}D{i:13}D{i:12}D{i:15}D{i:14}D{i:17}D{i:16}
D{i:19}D{i:18}D{i:21}D{i:20}D{i:23}D{i:22}D{i:25}D{i:24}D{i:26}D{i:27}D{i:28}D{i:29}
D{i:30}D{i:31}D{i:32}D{i:33}D{i:34}D{i:35}D{i:36}D{i:37}D{i:38}D{i:39}D{i:40}
}
##^##*/
