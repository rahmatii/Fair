import QtQuick 2.7
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.1
import QtGraphicalEffects 1.0
import Qt.labs.settings 1.0
import QtQuick.Dialogs 1.0
import QtQuick.VirtualKeyboard 2.2

Rectangle {

    width: 800
    height: 1080
    property string comboselect
    property var list: []
    signal regpress
    signal exit2()
    signal backtomenu()
    //border.color: "#FF5722"

    Text {
        id: element1
        x:800
        y: 400
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
        x: 600
        y: 400
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
        x: 800
        y: 450
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
        x: 600
        y: 450
        width: 200
        height: 21
        ComboBox {
            id:cbItems
            currentIndex: -1
            width: 200
            model: [ "عکس", "ویدیو", "فایل" ]
            onCurrentTextChanged:{comboselect=currentText;console.log(comboselect);rec2.visible=true;
                rectangle2.visible=true;
            }
        }


    }

    Rectangle {
        id: rectangle2
        x: 800
        y: 500
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
        x: 600
        y: 500
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
        x:600
        y:550
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
        x: 500
        y: 500
        width: 110
        height: 32
        text: "ثبت"
        spacing: -1
        font.pointSize: 10
        font.family: "IRANYekan"
        onClicked: {
            backtomenu();
        Services.addToFile(textInput.text,cbItems.currentIndex,list);
        }

    }

}
