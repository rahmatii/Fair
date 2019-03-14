import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Window 2.3

Item {
    id:keybox
    property point keyboardpos
    property bool anykeypressed:false
    property bool enfa:true     // true: EN   false: Fa
    property bool shift: false
    property bool nums: false
    signal keyispressed(string keylabel);
    signal backpressed()
    signal closepressed()

    width: 600 //((Screen.width-20)/2)-260
    height: 195//(Screen.height-20)/4
    x:keyboardpos.x
    y:keyboardpos.y

    Rectangle{
        anchors.fill: parent
        color:"transparent"

        MouseArea{
            anchors.fill: parent
            onPressed: {
                if(!anykeypressed){
                    closebutton.focus=true
                }
            }
        }
    }
    Rectangle{
        anchors.fill:parent
        radius:20
        color:"black"
        border.color: "white"
        border.width: 2
        Column{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            spacing: 5
            // ============================== Number Row ===================================
            Row{
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 4
                // ------------------------------------------------------------------
                Rbutton1{
                    ilabel:nums ? "1":(enfa ? (shift ? "Q":"q"):"ض")

                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel:nums ? "2":(enfa ? (shift ? "W":"w"):"ص")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "3":(enfa ? (shift ? "E":"e"):"ث")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "4":(enfa ? (shift ? "R":"r"):"ق")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "5":(enfa ? (shift ? "T":"t"):"ف")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "6":(enfa ? (shift ? "Y":"y"):"غ")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "7":(enfa ? (shift ? "U":"u"):"ع")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "8":(enfa ? (shift ? "I":"i"):"ه")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "9":(enfa ? (shift ? "O":"o"):"خ")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "0":(enfa ? (shift ? "P":"p"):"ح")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // ---------------------------------- backspace button----------------------------------
                RoundButton{
                    id:backbutton
                    width: 80
                    height: 40
                    radius:10
                    background: Rectangle{
                        anchors.fill: parent
                        radius:10
                        color: "#607D8B"
                        border.width:1
                        border.color: "white"
                        Text{
                            anchors.fill: parent
                            text:"\u2b05"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            color:"white"
                            font.pointSize: 22
                        }
                    }
                    Popup {
                        id: popup
                        x: -10
                        y: -60
                        width: 100
                        height: 60
                        background: Rectangle{
                            anchors.fill: parent
                            radius:10
                            color: "#21be2b" //"green"  //"#607D8B"
                            Text{
                                anchors.fill: parent
                                text:"\u2190"
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                color:"white"
                                font.pointSize: 18
                                font.family: "B Yekan"
                            }
                        }
                    }
                    onPressed: {
                        popup.open()
                        anykeypressed=true
                        backpressed()}
                    onClicked: popup.close()
                }
            }
            // ============================== First Row ===================================
            Row{
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 5
                // ------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "!":(enfa ? (shift ? "A":"a"):"ش")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "@":(enfa ? (shift ? "S":"s"):"س")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "#":(enfa ? (shift ? "D":"d"):"ی")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "$":(enfa ? (shift ? "F":"f"):"ب")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "%":(enfa ? (shift ? "G":"g"):"ل")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "^":(enfa ? (shift ? "H":"h"):"ا")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "&":(enfa ? (shift ? "J":"j"):"ت")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "*":(enfa ? (shift ? "K":"k"):"ن")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "-":(enfa ? (shift ? "L":"l"):"م")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "+":(enfa ? (shift ? "{":"("):"ک")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "=":(enfa ? (shift ? "}":")"):"گ")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "[":(enfa ? (shift ? "/":"/"):"ج")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "]":(enfa ? (shift ? ":":":"):"چ")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
            }
            //============================== Second Row================================
            Row{
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 5
                // ----------------------------- Shift key on left ------------------------------------------
                RoundButton{
                    id:shiftl
                    width: 60
                    height: 40
                    radius:10
                    checkable: true
                    background: Rectangle{
                        anchors.fill: parent
                        radius:10
                        color: shift? "white":"#607D8B"
                        border.width:1
                        border.color: "white"
                        Text{
                            anchors.fill: parent
                            text:"\u21e7"
                            font.family: "Tahoma"//"\u25bc"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            color:shift?"#607D8B":"white"
                            font.pointSize: 20
                        }

                    }
                    onPressed: {
                        anykeypressed=true
                    }
                    onCheckedChanged: {
                        shift=checked
                    }
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "-":(enfa ? (shift ? "Z":"z"):"ظ")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "_":(enfa ? (shift ? "X":"x"):"ط")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "~":(enfa ? (shift ? "C":"c"):"ز")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "<":(enfa ? (shift ? "V":"v"):"ر")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? ">":(enfa ? (shift ? "B":"b"):"ذ")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? ";":(enfa ? (shift ? "N":"n"):"د")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "|":(enfa ? (shift ? "M":"m"):"ئ")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel:nums ? ",":(enfa ? (shift ? ",":","):"و")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? ".":(enfa ? (shift ? ".":"."):"ژ")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // -----------------------------------------------------------------------------
                Rbutton1{
                    ilabel: nums ? "\u005c":(enfa ? (shift ? "?":"?"):"پ")
                    onRbuttonpressed:{
                        anykeypressed=true
                        keyispressed(ilabel)}
                }
                // ------------------------ Shift on right ------------------------------------------------
                RoundButton{
                    id:shiftr
                    width: 60
                    height: 40
                    radius:10
                    checkable: true
                    background: Rectangle{
                        anchors.fill: parent
                        radius:10
                        color: shift? "white":"#607D8B"
                        border.width:1
                        border.color: "white"
                        Text{
                            anchors.fill: parent
                            text:"\u21e7"
                            font.family: "Tahoma"//"\u25bc"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            color:shift?"#607D8B":"white"
                            font.pointSize: 20
                        }

                    }
                    onPressed:  anykeypressed=true
                    onCheckedChanged: {
                        shift=checked
                    }
                }
                // -----------------------------------------------------------------------------
            }
            //============================== 3rd Row ================================
            Row{
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 5


                // ------------------------------- symbols key on right ----------------------------------------
                RoundButton{
                    id:symsr
                    width: 60
                    height: 40
                    radius:10
                    checkable: true
                    background: Rectangle{
                        anchors.fill: parent
                        radius:10
                        color: nums?"white":"#607D8B"
                        border.width:1
                        border.color: "white"
                        Text{
                            anchors.fill: parent
                            text:"&123"
                            font.family: "Tahoma"//"\u25bc"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            color:nums?"#607D8B":"white"
                            font.pointSize: 10
                        }

                    }
                    onPressed: anykeypressed=true
                    onCheckedChanged: {
                        nums=checked
                    }
                }
                // --------------------------- language switch --------------------------------------------
                RoundButton{
                    id:lang
                    width: 60
                    height: 40
                    radius:10
                    background: Rectangle{
                        anchors.fill: parent
                        radius:10
                        color: "#607D8B"
                        border.width:1
                        border.color: "white"

                        Text{
                            anchors.fill: parent
                            text:enfa ? "فا":"En"
                            //font.family: "Tahoma"//"\u25bc"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            color:"white"
                            font.pointSize: 10
                            font.family: "B Yekan"
                        }
                        //                        Image{
                        //                            height: parent.height-8
                        //                            width: height
                        //                            anchors.horizontalCenter: parent.horizontalCenter
                        //                            anchors.verticalCenter: parent.verticalCenter
                        //                            source: applicationPath+"Images/globe.png"
                        //                        }
                    }
                    onPressed: {
                        anykeypressed=true
                        var lang;
                        lang=enfa;
                        enfa=!lang
                    }
                }
                // ------------------------------ Space -----------------------------------------------
                RoundButton{
                    id:spacekey
                    width: 260
                    height: 40
                    radius:10
                    background: Rectangle{
                        anchors.fill: parent
                        radius:10
                        color: "#607D8B"
                        border.width:1
                        border.color: "white"
                        Text{
                            anchors.fill: parent
                            text:"\u2008"     //" "
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            color:"white"
                            font.pointSize: 14
                        }

                    }
                    Popup {
                        id: popups
                        x: -10
                        y: -60
                        width: 260
                        height: 60
                        background: Rectangle{
                            anchors.fill: parent
                            radius:10
                            color: "#21be2b" //"green"  //"#607D8B"
                            Text{
                                anchors.fill: parent
                                text:" "
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                color:"white"
                                font.pointSize: 18
                                font.family: "B Yekan"
                            }
                        }
                    }
                    onPressed: {
                        popups.open()
                        anykeypressed=true
                        keyispressed(" ")}
                    onClicked: popups.close()
                }
                // ------------------------------- nsymbols key on left -------------------------------------
                RoundButton{
                    id:symsl
                    width: 60
                    height: 40
                    radius:10
                    checkable: true
                    background: Rectangle{
                        anchors.fill: parent
                        radius:10
                        color: nums?"white":"#607D8B"
                        border.width:1
                        border.color: "white"
                        Text{
                            anchors.fill: parent
                            text:"&123"
                            font.family: "Tahoma"//"\u25bc"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            color:nums?"#607D8B":"white"
                            font.pointSize: 10
                        }

                    }
                    onCheckedChanged: {
                        nums=checked
                    }
                }

                // -----------------------------------------------------------------------------
            }
        }
        //----------------------------------------- close button ---------------------------------
        RoundButton{
            id:closebutton
            width:40
            height:40
            radius:20
            x: parent.width-radius-5
            y:-radius
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
                closepressed()
                anykeypressed=true}
        }
        //----------------------------------------- Move button ---------------------------------
            Rectangle{
                width:40
                height:40
                radius: 20
                x:-radius
                y:-radius
                color:"red"
            Image{
                width: 30
                height: 30
                anchors.centerIn: parent
                source: applicationPath+"files/move.png"
            }

            MouseArea{
                id:dragArea
                anchors.fill: parent
                drag.target: keybox
//                onXChanged: if (keybox.x<5) Drag.cancel()
           }
        }
    }
}
