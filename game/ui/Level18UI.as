/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package game.ui {
	import laya.ui.*;import laya.display.*; 
	import laya.physics.BoxCollider;
	import laya.physics.RigidBody;
	import _Level;
	import Player;
	import MovingBlock;
	import laya.display.Text;
	import Point;
	import ButtonMain;
	import ButtonSound;

	public class Level18UI extends Scene {

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Scene","props":{"width":320,"height":570,"autoDestroyAtClosed":false},"compId":2,"child":[{"type":"Sprite","props":{"y":0,"x":0,"name":"background"},"compId":84,"child":[{"type":"Sprite","props":{"y":405,"x":0,"width":320,"texture":"ornge_box.png","height":165},"compId":87},{"type":"Sprite","props":{"y":0,"x":0,"width":320,"texture":"ornge_box.png","height":165},"compId":88}]},{"type":"Sprite","props":{"y":345,"x":-100,"width":520,"texture":"ornge_box.png","name":"Ground","height":60},"compId":4,"child":[{"type":"Script","props":{"y":1,"width":519,"label":"ground","height":60,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":24},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":25}]},{"type":"Script","props":{"y":165,"nextScene":"Level19.scene","Player":"@Prefab:Player.prefab","runtime":"_Level"},"compId":11},{"type":"Sprite","props":{"y":329,"x":-64,"texture":"green_box.png","presetID":1,"width":12,"name":"Player","isPresetRoot":true,"height":12},"compId":22,"child":[{"type":"Script","props":{"presetID":4,"land speed":3.2,"second jump delay time":100,"max jump speed":100,"jump speed":64,"jump delay time":200,"jump damping":256,"jump acceleration":256,"basic jump speed":96,"runtime":"Player"},"compId":23},{"type":"Script","props":{"y":1,"x":1,"width":10,"presetID":5,"label":"player","height":10,"isSensor":false,"runtime":"laya.physics.BoxCollider"},"compId":26},{"type":"Script","props":{"presetID":6,"gravityScale":0.5,"runtime":"laya.physics.RigidBody"},"compId":27}]},{"type":"Sprite","props":{"y":141,"x":-100,"width":520,"texture":"ornge_box.png","name":"Ceiling","height":48},"compId":36,"child":[{"type":"Script","props":{"y":1,"x":1,"width":518,"label":"block","height":46,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":37},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":38}]},{"type":"Sprite","props":{"y":93,"x":224,"width":32,"texture":"ornge_box.png","name":"TopBlock3","height":96},"compId":57,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":94,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":58},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":59},{"type":"Script","props":{"terminalY":125,"startY":165,"speedY":15,"runtime":"MovingBlock"},"compId":67}]},{"type":"Sprite","props":{"y":58,"x":60,"width":200,"texture":"green_box.png","name":"deathBg","height":48},"compId":89},{"type":"Text","props":{"y":420,"x":0,"width":320,"valign":"middle","text":"round","name":"Round Text","height":32,"fontSize":22,"font":"SimHei","color":"#ffffff","align":"center","runtime":"laya.display.Text"},"compId":39},{"type":"Text","props":{"y":66,"x":0,"width":320,"valign":"middle","text":"death","name":"Death Text","height":32,"fontSize":24,"font":"SimHei","color":"#ffffff","bold":true,"align":"center","runtime":"laya.display.Text"},"compId":41},{"type":"Sprite","props":{"y":345,"x":224,"width":32,"texture":"ornge_box.png","name":"Block3","height":88},"compId":45,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":86,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":46},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":47},{"type":"Script","props":{"terminalY":345,"startY":257,"speedY":15,"runtime":"MovingBlock"},"compId":92}]},{"type":"Sprite","props":{"y":313,"x":100,"width":8,"texture":"ornge_box.png","pivotY":4,"pivotX":4,"name":"Point1","height":8},"compId":72,"child":[{"type":"Script","props":{"y":0,"x":0,"width":8,"isSensor":true,"height":8,"runtime":"laya.physics.BoxCollider"},"compId":73},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":74},{"type":"Script","props":{"movingBlock1":"@node:57","coPoint":"@node:80","runtime":"Point"},"compId":75}]},{"type":"Sprite","props":{"y":273,"x":164,"width":8,"texture":"ornge_box.png","pivotY":4,"pivotX":4,"name":"Point2","height":8},"compId":80,"child":[{"type":"Script","props":{"y":0,"x":0,"width":8,"isSensor":true,"height":8,"runtime":"laya.physics.BoxCollider"},"compId":81},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":82},{"type":"Script","props":{"movingBlock1":"@node:57","coPoint":"@node:72","runtime":"Point"},"compId":83}]},{"type":"Button","props":{"y":514,"x":24,"presetID":1,"skin":"homeButton.png","name":"MenuButton","width":32,"height":32,"isPresetRoot":true},"compId":85,"child":[{"type":"Script","props":{"presetID":2,"runtime":"ButtonMain"},"compId":90}]},{"type":"Button","props":{"y":514,"x":72,"presetID":1,"skin":"muteButton.png","name":"SoundButton","isPresetRoot":true},"compId":86,"child":[{"type":"Script","props":{"runtime":"ButtonSound"},"compId":91}]}],"loadList":["ornge_box.png","Level19.scene","Player.prefab","green_box.png","Player.prefab","MenuButton.prefab","SoundButton.prefab"],"loadList3D":[]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}