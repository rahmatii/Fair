import QtQuick 2.9
import QtQuick.Controls 2.2
import Qt.labs.settings 1.0
import QtQuick.VirtualKeyboard 2.2
import QtQuick.VirtualKeyboard.Settings 2.0

Rectangle {
    width:500
    height: 350
    color: "#c1bfc0"
    radius: 15
    border.width: 1
    property bool usertext:false
    property bool usertext1:false
    property bool usertext2:false
    property var listlang: []
    InputPanel {
            Component.onCompleted: {
                listlang[2]="ar_AR";
                listlang[1]="en_US";
               listlang[0]="fa_FA";
                listlang[3]="fr_FR";
               VirtualKeyboardSettings.locale = "fa_FA";
                VirtualKeyboardSettings.activeLocales = listlang;
            }

            id: inputPanel
            z: 99
            x:-200
            y: 900
            width: screen.width/2

            states: State {
                name: "visible"
                when: inputPanel.active
                PropertyChanges {
                    target: inputPanel
                    y: parent.height+30
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



    signal regpress
    signal exit2()
    //border.color: "#FF5722"
    Text {
        id: element
        x: 0
        y: 13
        width: 501
        height: 27
        text: qsTr("ایده، پیشنهادات و انتفادات خود را در مورد فعالیت های واحد فضای مجازی با ما در میان بگذارید")
        font.family: "IRANYekan"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 12
    }

    Text {
        id: element1
        x: 289
        y: 219
        width: 118
        height: 21
        text: qsTr("نام و نام خانوادگی:")
        font.family: "IRANYekan"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle
        x: 93
        y: 219
        width: 200
        height: 21
        color: "#ffffff"
        radius: 10
        border.width: 1

        TextInput {
            id: textInput
            text: qsTr("")
            anchors.leftMargin: -25
            rightPadding: 7
            font.family: "IRANYekan"
            horizontalAlignment: Text.AlignRight
            anchors.fill: parent
            font.pixelSize: 12
//            MouseArea{
//                anchors.fill: parent
//                onPressed: {
//                    if (textInput.text=="نام") {textInput.text=""}
//                    textInput.cursorVisible=true
//                    textEdit.cursorVisible=false
//                    textInput1.cursorVisible=false
//                    loadkey.visible=true
//                    loadkey.sourceComponent=keyb1
//                   // loadkey.item.nums=true
//                    usertext=true
//                    usertext1=false
//                    usertext2=false
//                }
//            }
        }
    }

    Text {
        id: element2
        x: 289
        y: 257
        width: 118
        height: 21
        text: qsTr("شماره تماس:")
        font.pixelSize: 12
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        font.family: "IRANYekan"
    }

    Rectangle {
        id: rectangle1
        x: 93
        y: 257
        width: 200
        height: 21
        color: "#ffffff"
        radius: 10
        TextInput {
            id: textInput1
            text: qsTr("")
            leftPadding: 8
            anchors.fill: parent
            font.pixelSize: 12
            horizontalAlignment: Text.AlignLeft
            rightPadding: 7
            font.family: "IRANYekan"
//            MouseArea{
//                anchors.fill: parent
//                onPressed: {

//                    textInput1.cursorVisible=true
//                    textEdit.cursorVisible=false
//                    textInput.cursorVisible=false
//                    loadkey.visible=true
//                    loadkey.sourceComponent=keyb1
//                   // loadkey.item.nums=true
//                    usertext1=true
//                    usertext=false
//                    usertext2=false
//                }
//            }
        }
        border.width: 1
    }

    Rectangle {
        id: rectangle2
        x: 8
        y: 41
        width: 487
        height: 159
        color: "#ffffff"
        radius: 15
        border.width: 1

        TextEdit {
            id: textEdit
            text: qsTr("")
            padding: 6
            rightPadding: 3
            wrapMode:  TextEdit.WordWrap
            font.family: "IRANYekan"
            horizontalAlignment: Text.AlignRight
            anchors.fill: parent
            font.pixelSize: 12
//            MouseArea{
//                anchors.fill: parent
//                onPressed: {
//                     if (textEdit.text=="نظرات شما") {textEdit.text=""}
//                    textEdit.cursorVisible=true
//                    textInput1.cursorVisible=false
//                    textInput.cursorVisible=false
//                    loadkey.visible=true
//                    loadkey.sourceComponent=keyb1
//                   // loadkey.item.nums=true
//                    usertext2=true
//                    usertext1=false
//                    usertext=false
//                }
//            }
        }
    }

    RoundButton {
        id: regbt
        x: 197
        y: 295
        width: 110
        height: 32
        text: "ثبت نظر"
        font.pointSize: 10
        font.family: "IRANYekan"
        onPressed:{
            var list=[]
            list.push(textInput.text)
            list.push(textInput1.text)
            list.push(textEdit.text)
            Services.setDataVirtual(list,settings.counterVirtuall)
            settings.counterVirtuall++
            console.log("ss")
            console.log(settings.counterVirtuall)
            regpress()
        }
    }
    //----------------------------------------- close button ---------------------------------
    RoundButton{
        id:closebutton
        width:40
        height:40
        radius:20
        x: 0-radius
        y:-20
        background: Rectangle{
            anchors.fill: parent
            width:40
            height:40
            radius: 20
            color:"red"
            Text{text:"\u2716"
                color: "white"
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 14}
        }
        onPressed: {
            exit2()

        }
    }


    Settings{
        id:settings
        property int counterVirtuall: 0

    }
    //---------------------------------------------------- Load Keyboard -------------------------------------
    Loader{
        id:loadkey
    }

}




