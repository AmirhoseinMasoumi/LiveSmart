import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

Rectangle {
    id: musicPageId

    property real songTotalSecond: 220
    property int totalSongNumber: 4
    property string songName: "Test Song"
    property string songArtist: "Artist"

    Image {
        id: musicPageBackgroundId

        source: if(Settings.theme === "Day"){
                    "Resources/Backgrounds/MusicPageNight.png"
                }
                else{
                    "Resources/Backgrounds/MusicPage.png"
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

////////////////////////////////////////////////////////////////////////////////////

    Rectangle {
        id: rectangle
        x: 134
        y: 475
        width: 598
        height: 151
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#ffffff"
               }
        radius: 22

        Image {
            id: playId
            y: 10
            width: 60
            height: width
            anchors.horizontalCenter: parent.horizontalCenter
            source: if(Settings.theme === "Day"){
                        "Resources/Icon/playNight.png"
                    }
                    else{
                        "Resources/Icon/play.png"
                    }
            fillMode: Image.PreserveAspectFit
            visible: true
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    playId.scale = 1.3
                }
                onReleased: {
                    playId.scale = 1
                }
                onClicked: {
                    playId.visible = false
                    playId.focus = false
                    stopId.visible = true
                }
            }
        }

        Image {
            id: stopId
            y: 10
            width: 60
            height: width
            anchors.horizontalCenter: parent.horizontalCenter
            source: if(Settings.theme === "Day"){
                        "Resources/Icon/stopNight.png"
                    }
                    else{
                        "Resources/Icon/stop.png"
                    }
            fillMode: Image.PreserveAspectFit
            visible: false
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    stopId.scale = 1.3
                }
                onReleased: {
                    stopId.scale = 1
                }
                onClicked: {
                    stopId.visible = false
                    stopId.focus = false
                    playId.visible = true
                }
            }
        }

        Image {
            id: previousId
            x: 180
            y: 11
            width: 60
            height: width
            source: if(Settings.theme === "Day"){
                        "Resources/Icon/previousNight.png"
                    }
                    else{
                        "Resources/Icon/previous.png"
                    }
            fillMode: Image.PreserveAspectFit
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    previousId.scale = 1.3
                }
                onReleased: {
                    previousId.scale = 1
                }
                onClicked: {
                    if(swipeSongId.currentIndex === 0){
                        swipeSongId.currentIndex = 0
                    }else {
                        swipeSongId.currentIndex = swipeSongId.currentIndex - 1
                    }
                }
            }
        }

        Image {
            id: nextId
            x: 355
            y: 15
            width: 50
            height: width
            source: if(Settings.theme === "Day"){
                        "Resources/Icon/nextNight.png"
                    }
                    else{
                        "Resources/Icon/next.png"
                    }
            fillMode: Image.PreserveAspectFit
            MouseArea {
                anchors.fill: parent
                onPressed: {
                    nextId.scale = 1.3
                }
                onReleased: {
                    nextId.scale = 1
                }
                onClicked: {
                    if(swipeSongId.currentIndex === totalSongNumber - 1){
                        swipeSongId.currentIndex = totalSongNumber - 1
                    }else {
                        swipeSongId.currentIndex = swipeSongId.currentIndex + 1
                    }
                }
            }
        }

        Image {
            id: repeatOffId
            x: 440
            y: 25
            width: 30
            height: width
            source: if(Settings.theme === "Day"){
                        "Resources/Icon/repeat-on.png"
                    }
                    else{
                        "Resources/Icon/repeat-off.png"
                    }
            fillMode: Image.PreserveAspectFit
            visible: true
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    repeatOffId.visible = false
                    repeatOffId.focus = false
                    repeatOnId.visible = true
                }
            }
        }

        Image {
            id: repeatOnId
            x: 440
            y: 25
            width: 30
            height: width
            source: if(Settings.theme === "Day"){
                        "Resources/Icon/repeat-off.png"
                    }
                    else{
                        "Resources/Icon/repeat-on.png"
                    }
            fillMode: Image.PreserveAspectFit
            visible: false
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    repeatOnId.visible = false
                    repeatOnId.focus = false
                    repeatOffId.visible = true
                }
            }
        }

        Image {
            id: shufleOffId
            x: 110
            y: 25
            width: 35
            height: width
            source: if(Settings.theme === "Day"){
                        "Resources/Icon/shufle-on.png"
                    }
                    else{
                        "Resources/Icon/shufle-off.png"
                    }
            fillMode: Image.PreserveAspectFit
            visible: true
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    shufleOffId.visible = false
                    shufleOffId.focus = false
                    shufleOnId.visible = true
                }
            }
        }

        Image {
            id: shufleOnId
            x: 110
            y: 25
            width: 35
            height: width
            source: if(Settings.theme === "Day"){
                        "Resources/Icon/shufle-off.png"
                    }
                    else{
                        "Resources/Icon/shufle-on.png"
                    }
            fillMode: Image.PreserveAspectFit
            visible: false
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    shufleOnId.visible = false
                    shufleOnId.focus = false
                    shufleOffId.visible = true
                }
            }
        }

        Slider {
            id: musicSliderId
            x: 110
            y: 76
            width: 360
            height: 20
            from: 0
            to: songTotalSecond
            value: 40
        }

        Image {
            id: soundOnId
            x: 515
            y: 40
            width: 35
            height: width
            source: if(Settings.theme === "Day"){
                        "Resources/Icon/sound-onNight.png"
                    }
                    else{
                        "Resources/Icon/sound-on.png"
                    }
            fillMode: Image.PreserveAspectFit
            visible: true
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    soundOnId.visible = false
                    soundOnId.focus = false
                    soundOffId.visible = true
                    soundSliderId.value = 0
                }
            }
        }

        Image {
            id: soundOffId
            x: 515
            y: 40
            width: 35
            height: width
            source: if(Settings.theme === "Day"){
                        "Resources/Icon/sound-offNight.png"
                    }
                    else{
                        "Resources/Icon/sound-off.png"
                    }
            fillMode: Image.PreserveAspectFit
            visible: false
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    soundOffId.visible = false
                    soundOffId.focus = false
                    soundOnId.visible = true
                    soundSliderId.value = 25
                }
            }
        }

        Slider {
            id: soundSliderId
            x: 515
            y: 50
            width: 104
            height: 20
            rotation: -90
            from: 0
            to: 100
            value: 35
            onValueChanged: {
                soundOffId.visible = false
                soundOffId.focus = false
                soundOnId.visible = true

                if(value === 0){
                    soundOnId.visible = false
                    soundOnId.focus = false
                    soundOffId.visible = true
                }
            }
        }

        Text {
            id: songTotalTimeId
            x: 475
            y: 76
            color: "#333333"
            text: getSongTime(songTotalSecond)
            font.pixelSize: 14
        }

        Text {
            id: songPlayedTimeId
            x: 79
            y: 75
            color: "#333333"
            text: getSongTime(musicSliderId.value)
            font.pixelSize: 14

        }

        Text {
            id: songNameId
            x: 13
            y: 19
            width: 91
            height: 25
            color: "#9eb4ba"
            text: songName
            font.pixelSize: 15
            font.family: "Tahoma"
            style: Text.Sunken
        }

        Text {
            id: songArtistId
            x: 13
            y: 45
            width: 91
            height: 25
            color: "#9eb4ba"
            text: songArtist
            font.pixelSize: 15
            font.family: "Tahoma"
        }
    }

    function getSongTime(second) {
        var sec_num = parseInt(second, 10);
        var hours   = Math.floor(sec_num / 3600);
        var minutes = Math.floor((sec_num - (hours * 3600)) / 60);
        var seconds = sec_num - (hours * 3600) - (minutes * 60);

        if (seconds < 10) {seconds = "0"+seconds;}

        if(hours > 0) {
            return hours+':'+minutes+':'+seconds;
        }else {
            return minutes+':'+seconds;
        }
    }

    SwipeView {
        id: swipeSongId
        x: 258
        y: 53
        width: 350
        height: width

        Image {
            id: song1Id
            width: 300
            height: width
            source: "Resources/songs/ImagineDragonsEvolve.png"
        }
        Image {
            id: song2Id
            width: 300
            height: width
            source: "Resources/songs/Eminem.png"
        }
        Image {
            id: song3Id
            width: 300
            height: width
            source: "Resources/songs/MusicAlbum1.png"
        }
        Image {
            id: song4Id
            width: 300
            height: width
            source: "Resources/songs/taylors.png"
        }

        onCurrentIndexChanged: {
            musicSliderId.value = 0
        }
    }

    Image {
        id: controlPanelId
        source: if(Settings.theme === "Day"){
                    "Resources/Backgrounds/MusicControlPanelNight.png"
                }
                else{
                    "Resources/Backgrounds/MusicControlPanel.png"
                }
    }
    Image {
        id: userPanelId
        x: 750
        y: 0

        source: if(Settings.theme === "Day"){
                    "Resources/Backgrounds/MusicUserPanelNight.png"
                }
                else{
                    "Resources/Backgrounds/MusicUserPanel.png"
                }

        Switch {
            id: pannelRouterId
            x: 70
            y: 375
            width: 50
            height: 28
        }

        Switch {
            id: pannelTvId
            x: 204
            y: 375
            width: 50
            height: 28
        }

        Switch {
            id: pannelMicrovaweId
            x: 70
            y: 492
            width: 50
            height: 28
        }

        Switch {
            id: pannelConditionerId
            x: 204
            y: 492
            width: 50
            height: 28
        }

        Image {
            id: userProfileId
            x: 15
            y: 47
            width: 50
            height: width
            source: "Resources/Icon/userProfile.png"
            fillMode: Image.PreserveAspectFit
        }

        ComboBox {
            id: usersID
            x: 73
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
            x: 54
            y: 217
            scale: 1.5
            text: position === 1 ? "Alarm is ON":"Alarm is OFF"
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

    Image {
        id: fade1Id
        x: 608
        y: 53
        width: 142
        height: 350
        source: "Resources/shape/fade.png"
        rotation: 180
    }

    Image {
        id: fade1Id1
        x: 111
        y: 53
        width: 147
        height: 350
        source: "Resources/shape/fade.png"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.5;height:600;width:1024}D{i:1}D{i:2}D{i:3}D{i:4}
D{i:5}D{i:6}D{i:7}D{i:8}D{i:11}D{i:10}D{i:13}D{i:12}D{i:15}D{i:14}D{i:17}D{i:16}D{i:19}
D{i:18}D{i:21}D{i:20}D{i:23}D{i:22}D{i:25}D{i:24}D{i:26}D{i:28}D{i:27}D{i:30}D{i:29}
D{i:31}D{i:32}D{i:33}D{i:34}D{i:35}D{i:9}D{i:37}D{i:38}D{i:39}D{i:40}D{i:36}D{i:41}
D{i:43}D{i:44}D{i:45}D{i:46}D{i:47}D{i:48}D{i:49}D{i:50}D{i:51}D{i:52}D{i:42}D{i:53}
D{i:54}
}
##^##*/
