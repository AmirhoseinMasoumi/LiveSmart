import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3

Rectangle {
    id: membersPageId

    property string fontColor: if(Settings.theme === "Day"){
                                   "#FFFFFF"
                               }
                               else{
                                   "#000000"
                               }

    Image {
        id: membersPageBackgroundId

        source: if(Settings.theme === "Day"){
                    "Resources/Backgrounds/MembersPageNight.png"
                }
                else{
                    "Resources/Backgrounds/MembersPage.png"
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


////////////////////////////////////////////////////////////////////////////////

    Text {
        id: members
        x: 200
        y: 81
        width: 209
        height: 29
        color: fontColor
        text: qsTr("Members ")
        font.pixelSize: 30
        font.styleName: "Bold"
        font.family: "Verdana"
    }

    Rectangle {
        id: rectangle
        x: 200
        y: 150
        width: 460
        height: 183
        color: if(Settings.theme === "Day"){
                   "#000000"
               }
               else{
                   "#FFFFFF"
               }

        ListView{
            id: mListViewID
            model: mModelID
            delegate: delegateID
            anchors.fill: parent
            anchors.leftMargin: 8
        }
    }



    ListModel {
        id: mModelID

        ListElement {
            firstName: "Amirhosein"
            lastName: "Masoumi"
            profile: "Resources/Icon/userProfile.png"
        }
        ListElement {
            firstName: "FirstName"
            lastName: "LastName"
            profile: "Resources/Icon/profile1.png"
        }
        ListElement {
            firstName: "FirstName"
            lastName: "LastName"
            profile: "Resources/Icon/profile2.png"
        }
        ListElement {
            firstName: "FirstName"
            lastName: "LastName"
            profile: "Resources/Icon/profile3.png"
        }
    }

    Component {
        id: delegateID
        Rectangle {
            id: recangleID
            width: parent.width
            height: 50
            color: if(Settings.theme === "Day"){
                       "#000000"
                   }
                   else{
                       "#FFFFFF"
                   }
            border.color: fontColor

            Image {
                id: userProfileId
                x: parent.x + 15
                width: 40
                height: width
                anchors.verticalCenter: parent.verticalCenter
                source: profile
            }

            Image {
                id: deleteIconId
                x: parent.x + 420
                width: 20
                height: width
                visible: false
                anchors.verticalCenter: parent.verticalCenter
                source: "Resources/Icon/deleteSmall.png"
            }

            Text {
                id: textID
                color: fontColor
                anchors.centerIn: parent
                font.pointSize: 20
                text: firstName + " " + lastName
            }
        }
    }
    Image {
        id: addMemberId
        x: 584
        y: 94
        width: 27
        height: 27
        source: "Resources/Icon/add.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: deleteMemberId
        x: 629
        y: 92
        width: 31
        height: 31
        source: "Resources/Icon/delete.png"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            anchors.fill: parent
            onClicked: {
                if(deleteIconId.visible === false){
                    deleteIconId.visible = true
                }else {
                    deleteIconId.visible = false
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:600;width:1024}D{i:2}D{i:3}D{i:4}D{i:5}
D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}D{i:1}D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}
D{i:18}D{i:19}D{i:21}D{i:20}D{i:22}D{i:27}D{i:32}D{i:34}D{i:33}
}
##^##*/
