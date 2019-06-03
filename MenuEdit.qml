import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.1
import QtGraphicalEffects 1.0
import Qt.labs.settings 1.0
import QtQuick.Dialogs 1.0
import QtQuick.VirtualKeyboard 2.2

Rectangle {

    width: 700
    height: 700
    property string comboselect
    property var list: []
    signal regpress
    signal exit2()
    signal backtomenu()
    //border.color: "#FF5722"

    Text {
        id: element1
        x:374
        y: 201
        width: 118
        height: 21
        text: qsTr("نام منو:")
        font.family: "IRANYekan"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle
        x: 180
        y: 201
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
        }
    }

    Text {
        id: element2
        x: 374
        y: 248
        width: 118
        height: 21
        text: qsTr("نوع منو")
        font.pixelSize: 12
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignVCenter
        font.family: "IRANYekan"
    }

    Rectangle {
        id: rectangle1
        x: 8
        y: 473
        width: 200
        height: 21
        ComboBox {
            id:cbItems
            x: 175
            y: -237
            currentIndex: -1
            width: 200
            model: [ "عکس", "ویدیو", "فایل" , "صفحه وب" ]
            onCurrentTextChanged:{
                comboselect=currentText;
                console.log(comboselect);

                if(currentIndex!=3){

                    rectangle2.visible=true;
                     rec2.visible=true;
                    element3.visible=false
                    rec3.visible=false;
                }
                else {
                    element3.visible=true
                    rec3.visible=true;
                    rectangle2.visible=false;
                     rec2.visible=false;
                }

            }
        }


    }
    Text {
        id: element3
        x:374
        y: 302
        width: 118
        height: 21
        visible: false
        text: qsTr("آدرس صفحه وب :")
        font.family: "IRANYekan"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 12
    }

    Rectangle {
        id: rectangle2
        x: 407
        y: 302
        width: 100
        height: 21
        visible: false
        //  anchors.top:element2.bottom
        Text {
            id: name1
            font.family: "IRANYekan"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
            text: qsTr("بارگیری "+comboselect)
        }

        // border.width: 1
    }
    Rectangle{
        id:rec2
        visible: false
        x: 201
        y: 297
        width: 100
        height: 40
        //color: "Red"
        border.width: 1
        Text {
            id:brows
            font.pixelSize: 12
            anchors.centerIn: parent
            text: qsTr("Brows...")
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{fileDialog.visible=true;}
        }
    }
    Rectangle{
        id:rec3
        visible: false
        x: 180
        y: 343
        width: 200
        height: 21
        color: "#ffffff"
        radius: 10
        border.width: 1
        TextInput {
            id: textInput3
            text: qsTr("")
            anchors.leftMargin: -25
            rightPadding: 7
            font.family: "IRANYekan"
            horizontalAlignment: Text.AlignRight
            anchors.fill: parent
            font.pixelSize: 12
        }

    }



    FileDialog {

        id: fileDialog
        title: "Please choose a file"
        folder: shortcuts.home


        onAccepted: {
            console.log("You chose: " + fileDialog.fileUrls)// This is available in all editors.
            list[list.length]=String(fileDialog.fileUrls);
              cartModel.append({"name":String(fileDialog.fileUrls)});

            //   name1.text=String(fileDialog.fileUrls);
            //  brows.text=String(fileDialog.fileUrls);
        }
        onRejected: {
            console.log("Canceled")

        }
        Component.onCompleted: visible = false
    }
    ListModel{
        id:cartModel
    }

    ListView{
        //Component.onCompleted: cartModel.append({"name":"a","name":"b"})
        x:257
        y:417
        width: 400
        height: contentHeight
      //  anchors.fill: parent
        id:cartlist
        clip: true
        model:cartModel
        delegate: Rectangle{

            width: 100
            height: 50
            Text{
                id:textcartlist
                text:model.name
            }
            Rectangle{
                width: 20
                height: 20
                anchors.right: textcartlist.left
                anchors.rightMargin: 20
                Image {
                   anchors.fill: parent

                    source: applicationPath+"icons/remove.png"
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            cartModel.remove(model.name);
                        }
                    }
                }
            }
        }

    }



    RoundButton {
        id: regbt
        x: 180
        y: 370
        width: 110
        height: 32
        text: "ثبت"
        spacing: -1
        font.pointSize: 10
        font.family: "IRANYekan"
        onClicked: {
            if(textInput.text==""){
                mymsg.visible=true
                mymsg.msg="لطفا نام منو را وارد کنید."
            }
            else if(cbItems.currentIndex==0 && list.length==0)
            {
                mymsg.visible=true
                mymsg.msg="لطفا حداقل یک تصویر آپلود کنید."
            }
            else if(cbItems.currentIndex==1 && list.length==0)
            {
                mymsg.visible=true
                mymsg.msg="لطفا حداقل یک فیلم آپلود کنید."
            }
            else if(cbItems.currentIndex==2 && list.length==0)
            {
                mymsg.visible=true
                mymsg.msg="لطفا حداقل یک فایل آپلود کنید."
            }

            else{
                backtomenu();
                Services.addToFile(textInput.text,cbItems.currentIndex,list);
            }
        }

    }
    RoundButton {
        id: cancelbt
        x: 390
        y: 370
        width: 110
        height: 32
        text: "انصراف"
        spacing: -1
        font.pointSize: 10
        font.family: "IRANYekan"
        onClicked: {
            backtomenu();
       // Services.addToFile(textInput.text,cbItems.currentIndex,list);
        }

    }
    MsgBox{
        id:mymsg
        visible: false
    }

}
