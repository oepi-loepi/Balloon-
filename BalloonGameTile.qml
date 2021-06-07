import QtQuick 2.1
import BasicUIControls 1.0
import qb.components 1.0

Tile {
	id: balloonGameTile
	property bool dimState: screenStateController.dimmedColors

	NewTextLabel {
		id: clickText
		width: isNxt ? 284 : 220;  
		height: isNxt ? 35 : 30
		buttonActiveColor: "grey"
		buttonHoverColor: "blue"
		enabled : true
		textColor : "black"
		textDisabledColor : "grey"
		buttonText:  "Click here to start!"
		anchors {
			top: parent.top
			topMargin: 1
			horizontalCenter: parent.horizontalCenter 
			}
		onClicked: {stage.openFullscreen(app.balloonGameScreenUrl);}
		visible: !dimState
	}

	Image {
            id: balloon;
            source: "file:///qmf/qml/apps/balloonGame/drawables/BalloonIcon.png"
	    width: isNxt ? 100 : 80 
	    height: isNxt ? 100 : 80
            anchors {
                    horizontalCenter:parent.horizontalCenter;
                    verticalCenter: parent.verticalCenter;
		}        
	}
	visible: !dimState

}