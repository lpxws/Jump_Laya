/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package game.ui {
	import laya.ui.*;import laya.display.*; 
	import laya.physics.BoxCollider;
	import laya.physics.RigidBody;
	import _Level;
	import Player;
	import laya.display.Text;
	import ButtonScene;
	import ButtonMain;
	import ButtonSound;

	public class LevelEndUI extends Scene {

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"Scene","props":{"width":320,"height":570,"autoDestroyAtClosed":false},"compId":2,"child":[{"type":"Sprite","props":{"y":0,"x":0,"name":"background"},"compId":45,"child":[{"type":"Sprite","props":{"y":405,"x":0,"width":320,"texture":"red_box.png","height":165},"compId":49},{"type":"Sprite","props":{"y":0,"x":0,"width":320,"texture":"red_box.png","height":165},"compId":50}]},{"type":"Sprite","props":{"y":345,"x":-100,"width":520,"texture":"red_box.png","name":"Ground","height":60},"compId":4,"child":[{"type":"Script","props":{"y":1,"width":519,"label":"ground","height":60,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":24},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":25}]},{"type":"Script","props":{"y":165,"nextScene":"Level11.scene","enabled":false,"Player":"@Prefab:Player.prefab","runtime":"_Level"},"compId":11},{"type":"Sprite","props":{"y":329,"x":-64,"presetID":1,"width":12,"texture":"ornge_box.png","name":"Player","isPresetRoot":true,"height":12},"compId":22,"child":[{"type":"Script","props":{"presetID":4,"land speed":3.2,"second jump delay time":100,"max jump speed":100,"jump speed":64,"jump delay time":200,"jump damping":256,"jump acceleration":256,"basic jump speed":96,"runtime":"Player"},"compId":23},{"type":"Script","props":{"y":1,"x":1,"width":10,"presetID":5,"label":"player","height":10,"isSensor":false,"runtime":"laya.physics.BoxCollider"},"compId":26},{"type":"Script","props":{"presetID":6,"gravityScale":0.5,"runtime":"laya.physics.RigidBody"},"compId":27}]},{"type":"Sprite","props":{"y":117,"x":-100,"width":520,"texture":"red_box.png","name":"Ceiling","height":48},"compId":36,"child":[{"type":"Script","props":{"y":1,"x":1,"width":518,"label":"block","height":46,"friction":0,"runtime":"laya.physics.BoxCollider"},"compId":37},{"type":"Script","props":{"type":"static","runtime":"laya.physics.RigidBody"},"compId":38}]},{"type":"Sprite","props":{"y":58,"x":60,"width":200,"texture":"blue_box.png","name":"deathBg","height":48},"compId":53},{"type":"Text","props":{"y":420,"x":0,"width":320,"valign":"middle","text":"round","name":"Round Text","height":32,"fontSize":22,"font":"SimHei","color":"#ffffff","align":"center","runtime":"laya.display.Text"},"compId":39},{"type":"Text","props":{"y":66,"x":0,"width":320,"valign":"middle","text":"death","name":"Death Text","height":32,"fontSize":24,"font":"SimHei","color":"#ffffff","bold":true,"align":"center","runtime":"laya.display.Text"},"compId":41},{"type":"Button","props":{"y":273,"x":112,"width":96,"stateNum":3,"skin":"red_box.png","height":32},"compId":42,"child":[{"type":"Script","props":{"scene":"MainMenu.scene","runtime":"ButtonScene"},"compId":43},{"type":"Text","props":{"y":0,"x":0,"width":96,"valign":"middle","text":"返回","name":"Button Text","height":32,"fontSize":16,"font":"SimHei","color":"#ffffff","bold":false,"align":"center","runtime":"laya.display.Text"},"compId":54}]},{"type":"Text","props":{"y":210,"x":0,"width":320,"text":"恭喜你过关啦！","name":"TipText","fontSize":24,"font":"SimHei","color":"#e5695d","align":"center","runtime":"laya.display.Text"},"compId":44},{"type":"Button","props":{"y":514,"x":24,"presetID":1,"skin":"homeButton.png","name":"MenuButton","width":32,"height":32,"isPresetRoot":true},"compId":47,"child":[{"type":"Script","props":{"presetID":2,"runtime":"ButtonMain"},"compId":51}]},{"type":"Button","props":{"y":514,"x":72,"presetID":1,"skin":"muteButton.png","name":"SoundButton","isPresetRoot":true},"compId":48,"child":[{"type":"Script","props":{"runtime":"ButtonSound"},"compId":52}]}],"loadList":["red_box.png","Level11.scene","Player.prefab","Player.prefab","blue_box.png","MainMenu.scene","MenuButton.prefab","SoundButton.prefab"],"loadList3D":[]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}