/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package game.ui {
	import laya.ui.*;import laya.display.*; 
	import laya.physics.BoxCollider;
	import laya.physics.RigidBody;
	import _Level;
	import Player;
	import MovingBlock;
	import laya.display.Text;
	import ButtonMain;
	import ButtonSound;

	public class Level15UI extends Scene {

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Scene","props":{"width":320,"height":570,"autoDestroyAtClosed":false},"compId":2,"child":[{"type":"Sprite","props":{"y":0,"x":0,"name":"background"},"compId":57,"child":[{"type":"Sprite","props":{"y":405,"x":0,"width":320,"texture":"ornge_box.png","height":165},"compId":60},{"type":"Sprite","props":{"y":0,"x":0,"width":320,"texture":"ornge_box.png","height":165},"compId":61},{"type":"Sprite","props":{"y":58,"x":60,"width":200,"texture":"green_box.png","name":"deathBg","height":48},"compId":62}]},{"type":"Sprite","props":{"y":345,"x":-100,"width":520,"texture":"ornge_box.png","name":"Ground","height":60},"compId":4,"child":[{"type":"Script","props":{"y":1,"width":519,"label":"ground","height":60,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":24},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":25}]},{"type":"Script","props":{"y":165,"nextScene":"Level16.scene","Player":"@Prefab:Player.prefab","runtime":"_Level"},"compId":11},{"type":"Sprite","props":{"y":329,"x":-64,"texture":"green_box.png","presetID":1,"width":12,"name":"Player","isPresetRoot":true,"height":12},"compId":22,"child":[{"type":"Script","props":{"presetID":4,"land speed":3.2,"second jump delay time":100,"max jump speed":100,"jump speed":64,"jump delay time":200,"jump damping":256,"jump acceleration":256,"basic jump speed":96,"runtime":"Player"},"compId":23},{"type":"Script","props":{"y":1,"x":1,"width":10,"presetID":5,"label":"player","height":10,"isSensor":false,"runtime":"laya.physics.BoxCollider"},"compId":26},{"type":"Script","props":{"presetID":6,"gravityScale":0.5,"runtime":"laya.physics.RigidBody"},"compId":27}]},{"type":"Sprite","props":{"y":345,"x":96,"width":32,"texture":"ornge_box.png","name":"Block1","height":32},"compId":28,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":30,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":31},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":32},{"type":"Script","props":{"terminalY":345,"startY":313,"speedY":20,"runtime":"MovingBlock"},"compId":66}]},{"type":"Sprite","props":{"y":141,"x":-100,"width":520,"texture":"ornge_box.png","name":"Ceiling","height":48},"compId":36,"child":[{"type":"Script","props":{"y":1,"x":1,"width":518,"label":"block","height":46,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":37},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":38}]},{"type":"Text","props":{"y":420,"x":0,"width":320,"valign":"middle","text":"round","name":"Round Text","height":32,"fontSize":22,"font":"SimHei","color":"#ffffff","align":"center","runtime":"laya.display.Text"},"compId":39},{"type":"Text","props":{"y":66,"x":0,"width":320,"valign":"middle","text":"death","name":"Death Text","height":32,"fontSize":24,"font":"SimHei","color":"#ffffff","bold":true,"align":"center","runtime":"laya.display.Text"},"compId":41},{"type":"Sprite","props":{"y":345,"x":160,"width":32,"texture":"ornge_box.png","name":"Block2","height":64},"compId":42,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":62,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":43},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":44},{"type":"Script","props":{"terminalY":345,"startY":281,"speedY":20,"runtime":"MovingBlock"},"compId":67}]},{"type":"Sprite","props":{"y":345,"x":224,"width":32,"texture":"ornge_box.png","name":"Block3","height":32},"compId":45,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":30,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":46},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":47},{"type":"Script","props":{"terminalY":345,"startY":313,"speedY":20,"runtime":"MovingBlock"},"compId":68}]},{"type":"Sprite","props":{"y":165,"x":0,"width":64,"texture":"ornge_box.png","name":"TopBlock1","height":152},"compId":48,"child":[{"type":"Script","props":{"y":1,"x":1,"width":62,"label":"block","height":150,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":51},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":52}]},{"type":"Sprite","props":{"y":165,"x":284,"width":40,"texture":"ornge_box.png","name":"TopBlock2","height":152},"compId":49,"child":[{"type":"Script","props":{"y":1,"x":1,"width":38,"label":"block","height":150,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":53},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":54}]},{"type":"Button","props":{"y":514,"x":24,"presetID":1,"skin":"homeButton.png","name":"MenuButton","width":32,"height":32,"isPresetRoot":true},"compId":58,"child":[{"type":"Script","props":{"presetID":2,"runtime":"ButtonMain"},"compId":63}]},{"type":"Button","props":{"y":514,"x":72,"presetID":1,"skin":"muteButton.png","name":"SoundButton","isPresetRoot":true},"compId":59,"child":[{"type":"Script","props":{"runtime":"ButtonSound"},"compId":64}]}],"loadList":["ornge_box.png","green_box.png","Level16.scene","Player.prefab","Player.prefab","MenuButton.prefab","SoundButton.prefab"],"loadList3D":[]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}