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

	public class Level34UI extends Scene {

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Scene","props":{"width":320,"height":570,"autoDestroyAtClosed":false},"compId":2,"child":[{"type":"Sprite","props":{"y":0,"x":0,"name":"background"},"compId":54,"child":[{"type":"Sprite","props":{"y":405,"x":0,"width":320,"texture":"red_box.png","height":165},"compId":57},{"type":"Sprite","props":{"y":0,"x":0,"width":320,"texture":"red_box.png","height":165},"compId":58},{"type":"Sprite","props":{"y":58,"x":60,"width":200,"texture":"blue_box.png","name":"deathBg","height":48},"compId":59}]},{"type":"Sprite","props":{"y":345,"x":-100,"width":520,"texture":"red_box.png","name":"Ground","height":60},"compId":4,"child":[{"type":"Script","props":{"y":1,"width":519,"label":"ground","height":60,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":24},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":25}]},{"type":"Script","props":{"y":165,"x":0,"nextScene":"Level35.scene","Player":"@Prefab:Player.prefab","runtime":"_Level"},"compId":11},{"type":"Sprite","props":{"y":329,"x":-64,"texture":"blue_box.png","presetID":1,"width":12,"name":"Player","isPresetRoot":true,"height":12},"compId":22,"child":[{"type":"Script","props":{"presetID":4,"land speed":3.2,"second jump delay time":100,"max jump speed":100,"jump speed":64,"jump delay time":200,"jump damping":256,"jump acceleration":256,"basic jump speed":96,"runtime":"Player"},"compId":23},{"type":"Script","props":{"y":1,"x":1,"width":10,"presetID":5,"label":"player","height":10,"isSensor":false,"runtime":"laya.physics.BoxCollider"},"compId":26},{"type":"Script","props":{"presetID":6,"gravityScale":0.5,"runtime":"laya.physics.RigidBody"},"compId":27}]},{"type":"Sprite","props":{"y":345,"x":64,"width":32,"texture":"red_box.png","name":"Block1","height":32},"compId":28,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":30,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":31},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":32},{"type":"Script","props":{"startY":313,"speedY":20,"runtime":"MovingBlock"},"compId":62}]},{"type":"Sprite","props":{"y":149,"x":-100,"width":520,"texture":"red_box.png","name":"Ceiling","height":48},"compId":36,"child":[{"type":"Script","props":{"y":1,"x":1,"width":518,"label":"block","height":46,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":37},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":38}]},{"type":"Text","props":{"y":420,"x":0,"width":320,"valign":"middle","text":"round","name":"Round Text","height":32,"fontSize":22,"font":"SimHei","color":"#ffffff","align":"center","runtime":"laya.display.Text"},"compId":39},{"type":"Text","props":{"y":66,"x":0,"width":320,"valign":"middle","text":"death","name":"Death Text","height":32,"fontSize":24,"font":"SimHei","color":"#ffffff","bold":true,"align":"center","runtime":"laya.display.Text"},"compId":41},{"type":"Sprite","props":{"y":345,"x":128,"width":32,"texture":"red_box.png","name":"Block2","height":64},"compId":42,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":62,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":43},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":44},{"type":"Script","props":{"startY":281,"speedY":15,"runtime":"MovingBlock"},"compId":63}]},{"type":"Sprite","props":{"y":345,"x":192,"width":32,"texture":"red_box.png","name":"Block3","height":80},"compId":45,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":78,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":46},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":47},{"type":"Script","props":{"startY":265,"speedY":15,"runtime":"MovingBlock"},"compId":64}]},{"type":"Sprite","props":{"y":345,"x":256,"width":32,"texture":"red_box.png","name":"Block4","height":64},"compId":48,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":62,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":49},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":50},{"type":"Script","props":{"startY":281,"speedY":15,"runtime":"MovingBlock"},"compId":65}]},{"type":"Sprite","props":{"y":300,"x":112,"width":8,"texture":"red_box.png","pivotY":4,"pivotX":4,"name":"PointJump","height":8},"compId":51,"child":[{"type":"Script","props":{"width":8,"label":"JumpPoint","isSensor":true,"height":8,"runtime":"laya.physics.BoxCollider"},"compId":52},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":53}]},{"type":"Button","props":{"y":514,"x":24,"presetID":1,"skin":"homeButton.png","name":"MenuButton","width":32,"height":32,"isPresetRoot":true},"compId":55,"child":[{"type":"Script","props":{"presetID":2,"runtime":"ButtonMain"},"compId":60}]},{"type":"Button","props":{"y":514,"x":72,"presetID":1,"skin":"muteButton.png","name":"SoundButton","isPresetRoot":true},"compId":56,"child":[{"type":"Script","props":{"runtime":"ButtonSound"},"compId":61}]},{"type":"Sprite","props":{"y":125,"x":96,"width":32,"texture":"red_box.png","name":"Block1","height":72},"compId":66,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":70,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":69},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":70},{"type":"Script","props":{"startY":173,"speedY":10,"runtime":"MovingBlock"},"compId":71}]},{"type":"Sprite","props":{"y":157,"x":160,"width":32,"texture":"red_box.png","name":"Block2","height":40},"compId":67,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":38,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":72},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":73},{"type":"Script","props":{"startY":181,"speedY":15,"runtime":"MovingBlock"},"compId":74}]},{"type":"Sprite","props":{"y":133,"x":224,"width":32,"texture":"red_box.png","name":"Block3","height":64},"compId":68,"child":[{"type":"Script","props":{"y":1,"x":1,"width":30,"label":"block","height":62,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":75},{"type":"Script","props":{"type":"kinematic","runtime":"laya.physics.RigidBody"},"compId":76},{"type":"Script","props":{"startY":161,"speedY":15,"runtime":"MovingBlock"},"compId":77}]}],"loadList":["red_box.png","blue_box.png","Level35.scene","Player.prefab","Player.prefab","MenuButton.prefab","SoundButton.prefab"],"loadList3D":[]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}