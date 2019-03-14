import QtQuick 2.9
import QtQuick.Controls 2.2
import Qt.labs.settings 1.0
import QtQuick.VirtualKeyboard 2.2
import QtQuick.VirtualKeyboard.Settings 2.0
import QtQuick.Window 2.2


Rectangle {
    width:500
    height: 350
    color: "#c1bfc0"
    radius: 15
    border.width: 1
    property bool usertext:false
    property bool usertext1:false
    property bool usertext2:false
    property bool usertext3:false
    property bool usertext4:false
    property var listlang: []

//    InputPanel {
//           id: inputPanel
//           y: Qt.inputMethod.visible ? parent.height - inputPanel.height : parent.height
//           anchors.left: parent.left
//           anchors.right: parent.right
//       }
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


    signal regpress2
    signal exit3()

    Text {
        id: element1
        x: 299
        y: 33
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
        y:33
        width: 200
        height: 21
        color: "#ffffff"
        radius: 10
        border.width: 1

        TextInput {
            id: textInput
            text: qsTr("")
            anchors.fill: parent
            rightPadding: 7
            font.family: "IRANYekan"
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
//            MouseArea{
//                anchors.fill: parent
//                onPressed: {

//                    textInput.cursorVisible=true
//                    //textEdit.cursorVisible=false
//                    textInput1.cursorVisible=false
//                    textInput2.cursorVisible=false


////                    loadkey.visible=true
////                    loadkey.sourceComponent=keyb1
////                   // loadkey.item.nums=true
////                    usertext=true
////                    usertext3=false
////                    usertext1=false
////                    usertext2=false
////                    usertext4=false
//                }
//            }
        }
    }

    Text {
        id: element2
        x: 299
        y: 73
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
        y: 73
        width: 200
        height: 21
        color: "#ffffff"
        radius: 10
        TextInput {
            id: textInput1
            text: qsTr("")
            anchors.fill: parent
            leftPadding: 8
            font.pixelSize: 12
            horizontalAlignment: Text.AlignLeft
            rightPadding: 7
            font.family: "IRANYekan"
//            MouseArea{
//                anchors.fill: parent
//                onPressed: {

//                    textInput1.cursorVisible=true

//                    textInput.cursorVisible=false
//                    textInput2.cursorVisible=false


////                    loadkey.visible=true
////                    loadkey.sourceComponent=keyb1
////                   // loadkey.item.nums=true
////                    usertext3=true
////                    usertext=false
////                    usertext1=false
////                    usertext2=false
////                    usertext4=false
//                }
//            }
        }
        border.width: 1
    }
    Text {
        id: element21
        x: 299
        y: 113
        width: 118
        height: 21
        text: qsTr("شماره تلگرام :")
        font.pixelSize: 12
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        font.family: "IRANYekan"
    }

    Rectangle {
        id: rectangle11
        x: 93
        y: 113
        width: 200
        height: 21
        color: "#ffffff"
        radius: 10
        TextInput {
            id: textInput2
            text: qsTr("")
            anchors.fill: parent
            leftPadding: 8
            font.pixelSize: 12
            horizontalAlignment: Text.AlignLeft
            rightPadding: 7
            font.family: "IRANYekan"
//            MouseArea{
//                anchors.fill: parent
//                onPressed: {

//                    textInput2.cursorVisible=true

//                    textInput.cursorVisible=false

//                    textInput1.cursorVisible=false

////                    loadkey.visible=true
////                    loadkey.sourceComponent=keyb1
////                   // loadkey.item.nums=true
////                    usertext3=true
////                    usertext=false
////                    usertext1=false
////                    usertext2=false
////                    usertext4=false
//                }
//            }
        }
        border.width: 1
    }
    Text {
        id: element32
        x: 299
        y: 153
        width: 118
        height: 21
        text: qsTr("محصول مورد علاقه شما:")
        font.pixelSize: 12
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        font.family: "IRANYekan"
    }

    CheckBox{
        id:check1
        x:113
        y:143
        checked: false
        text: qsTr("میز لمسی")
        font.pixelSize: 12

        font.family: "IRANYekan"

    }
    CheckBox{
        id:check2
        x:113
        y:183
        checked: false
        text: qsTr("تبلت هوشمند")
        font.pixelSize: 12

        font.family: "IRANYekan"

    }
    CheckBox{
        id:check3
        x:113
        y:223
        checked: false
        text: qsTr("کیوسک سفارش گیری")
        font.pixelSize: 12

        font.family: "IRANYekan"

    }

//    Rectangle {
//        id: rectangle2
//        x: 8
//        y: 41
//        width: 487
//        height: 97
//        color: "#ffffff"
//        radius: 15
//        border.width: 1

//        TextEdit {
//            id: textEdit
//            text: qsTr("")
//            padding: 6
//            rightPadding: 3
//             wrapMode:  TextEdit.WordWrap
//            font.family: "IRANYekan"
//            horizontalAlignment: Text.AlignRight
//            anchors.fill: parent
//            font.pixelSize: 12
//            MouseArea{
//                anchors.fill: parent
//                onPressed: {

////                    textEdit.cursorVisible=true
////                    textInput.cursorVisible=false
////                    textInput1.cursorVisible=false
////                    textInput2.cursorVisible=false
////                    textInput3.cursorVisible=false

////                    loadkey.visible=true
////                    loadkey.sourceComponent=keyb1
////                   // loadkey.item.nums=true
////                    usertext4=true
////                    usertext=false
////                    usertext1=false
////                    usertext2=false
////                    usertext3=false
//                }
//            }
//        }
//    }

    RoundButton {
        id: regbt
        x: 197
        y: 297
        width: 110
        height: 32
        text: "ثبت نظر"
        font.pointSize: 10
        font.family: "IRANYekan"
        onPressed:{
            var list=[]
            list.push(textInput.text)
            list.push(textInput1.text)
            list.push(textInput2.text)
            if(check1.checked)
                list.push(check1.text)
            else
                list.push("")
            if(check2.checked)
                list.push(check2.text)
            else
                list.push("")
            if(check3.checked)
                list.push(check3.text)
            else
                list.push("")

            Services.setDataSmartCity(list , settings.counterSmart);
            settings.counterSmart++

            regpress2()
        }
    }

//    Text {
//        id: element3
//        x: 299
//        y: 288
//        width: 118
//        height: 21
//        text: qsTr("نام شرکت:")
//        font.pixelSize: 12
//        horizontalAlignment: Text.AlignRight
//        verticalAlignment: Text.AlignVCenter
//        font.family: "IRANYekan"
//    }

//    Rectangle {
//        id: rectangle3
//        x: 93
//        y: 288
//        width: 200
//        height: 21
//        color: "#ffffff"
//        radius: 10
//        TextInput {
//            id: textInput2
//            anchors.fill: parent
//            font.pixelSize: 12
//            horizontalAlignment: Text.AlignRight
//            rightPadding: 7
//            font.family: "IRANYekan"
//            MouseArea{
//                anchors.fill: parent
//                onPressed: {

////                    textInput2.cursorVisible=true
////                    textInput.cursorVisible=false
////                    textInput1.cursorVisible=false
////                    textEdit.cursorVisible=false
////                    textInput3.cursorVisible=false

////                    loadkey.visible=true
////                    loadkey.sourceComponent=keyb1
////                   // loadkey.item.nums=true
////                    usertext1=true
////                    usertext=false
////                    usertext4=false
////                    usertext2=false
////                    usertext3=false
//                }
//            }
//        }
//        border.width: 1
//    }

//    Text {
//        id: element4
//        x: 299
//        y: 320
//        width: 118
//        height: 21
//        text: qsTr("زمینه کاری:")
//        font.pixelSize: 12
//        horizontalAlignment: Text.AlignRight
//        verticalAlignment: Text.AlignVCenter
//        font.family: "IRANYekan"
//    }

//    Rectangle {
//        id: rectangle4
//        x: 93
//        y: 320
//        width: 200
//        height: 21
//        color: "#ffffff"
//        radius: 10
//        TextInput {
//            id: textInput3
//            anchors.fill: parent
//            font.pixelSize: 12
//            horizontalAlignment: Text.AlignRight
//            rightPadding: 7
//            font.family: "IRANYekan"
//            MouseArea{
//                anchors.fill: parent
//                onPressed: {

////                    textInput3.cursorVisible=true
////                    textInput.cursorVisible=false
////                    textInput1.cursorVisible=false
////                    textEdit.cursorVisible=false
////                    textInput2.cursorVisible=false

////                    loadkey.visible=true
////                    loadkey.sourceComponent=keyb1
////                   // loadkey.item.nums=true
////                    usertext2=true
////                    usertext=false
////                    usertext4=false
////                    usertext1=false
////                    usertext3=false
//                }
//            }

//        }
//        border.width: 1
//    }

//    Text {
//        id: element5
//        x: 0
//        y: 158
//        width: 501
//        height: 94
//        text: qsTr("ما مشکلات رستوران شما را به صورت هوشمند برطرف خواهیم کرد")
//        wrapMode: Text.WordWrap
//        font.pixelSize: 12
//        horizontalAlignment: Text.AlignHCenter
//        verticalAlignment: Text.AlignVCenter
//        font.family: "IRANYekan"
//    }
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
            exit3()

        }
    }

    Settings{
        id:settings
        property int counterSmart: 0

    }
 }




