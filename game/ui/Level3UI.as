/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package game.ui {
	import laya.ui.*;import laya.display.*; 
	import laya.display.Text;
	import laya.physics.BoxCollider;
	import laya.physics.RigidBody;
	import _Level;
	import Player;
	import MovingBlock;
	import ButtonMain;
	import ButtonSound;

	public class Level3UI extends Scene {

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Scene","props":{"width":320,"height":570,"autoDestroyAtClosed":false},"compId":2,"child":[{"type":"Sprite","props":{"y":0,"x":0,"name":"background"},"compId":48,"child":[{"type":"Sprite","props":{"y":405,"x":0,"width":320,"texture":"green_box.png","height":165},"compId":49},{"type":"Sprite","props":{"y":0,"x":0,"width":320,"texture":"green_box.png","height":165},"compId":50},{"type":"Sprite","props":{"y":58,"x":60,"width":200,"texture":"ornge_box.png","name":"deathBg","height":48},"compId":51}]},{"type":"Text","props":{"y":200,"x":0,"width":320,"text":"快来试试三连跳","name":"TipText","fontSize":24,"font":"SimHei","color":"#55bfab","align":"center","runtime":"laya.display.Text"},"compId":54},{"type":"Sprite","props":{"y":345,"x":-100,"width":520,"texture":"green_box.png","name":"Ground","height":60},"compId":4,"child":[{"type":"Script","props":{"y":1,"width":519,"label":"ground","height":60,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":24},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":25}]},{"type":"Script","props":{"y":165,"nextScene":"Level4.scene","Player":"@Prefab:Player.prefab","runtime":"_Level"},"compId":11},{"type":"Sprite","props":{"y":329,"x":-64,"presetID":1,"width":12,"texture":"ornge_box.png","name":"Player","isPresetRoot":true,"height":12},"compId":22,"child":[{"type":"Script","props":{"presetID":4,"land speed":3.2,"second jump delay time":100,"max jump speed":100,"jump speed":64,"jump delay time":200,"jump damping":256,"jump acceleration":256,"basic jump speed":96,"runtime":"Player"},"compId":23},{"type":"Script","props":{"y":1,"x":1,"width":10,"presetID":5,"label":"player","height":10,"isSensor":false,"runtime":"laya.physics.BoxCollider"},"compId":26},{"type":"Script","props":{"presetID":6,"gravityScale":0.5,"runtime":"laya.physics.RigidBody"},"compId":27}]},{"type":"Sprite","props":{"y":345,"x":96,"width":32,"texture":"green_box.png","name":"Block1","height":24},"compId":28,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":22,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":31},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":32},{"type":"Script","props":{"terminalY":345,"startY":329,"speedY":25,"runtime":"MovingBlock"},"compId":57}]},{"type":"Text","props":{"y":420,"x":0,"width":320,"valign":"middle","text":"round","name":"Round Text","height":32,"fontSize":22,"font":"SimHei","color":"#ffffff","align":"center","runtime":"laya.display.Text"},"compId":39},{"type":"Text","props":{"y":66,"x":0,"width":320,"valign":"middle","text":"death","name":"Death Text","height":32,"fontSize":24,"font":"SimHei","color":"#ffffff","bold":true,"align":"center","runtime":"laya.display.Text"},"compId":41},{"type":"Sprite","props":{"y":345,"x":160,"width":32,"texture":"green_box.png","name":"Block2","height":32},"compId":42,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":30,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":43},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":44},{"type":"Script","props":{"terminalY":345,"startY":313,"speedY":25,"runtime":"MovingBlock"},"compId":58}]},{"type":"Sprite","props":{"y":345,"x":224,"width":32,"texture":"green_box.png","name":"Block3","height":48},"compId":45,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":46,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":46},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":47},{"type":"Script","props":{"terminalY":345,"startY":297,"speedY":25,"runtime":"MovingBlock"},"compId":59}]},{"type":"Button","props":{"y":514,"x":24,"presetID":1,"skin":"homeButton.png","name":"MenuButton","width":32,"height":32,"isPresetRoot":true},"compId":52,"child":[{"type":"Script","props":{"presetID":2,"runtime":"ButtonMain"},"compId":55}]},{"type":"Button","props":{"y":514,"x":72,"presetID":1,"skin":"muteButton.png","name":"SoundButton","isPresetRoot":true},"compId":53,"child":[{"type":"Script","props":{"runtime":"ButtonSound"},"compId":56}]}],"loadList":["green_box.png","ornge_box.png","Level4.scene","Player.prefab","Player.prefab","MenuButton.prefab","SoundButton.prefab"],"loadList3D":[]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}