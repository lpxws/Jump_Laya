/**This class is automatically generated by LayaAirIDE, please do not make any modifications. */
package game.ui {
	import laya.ui.*;import laya.display.*; 
	import laya.display.Text;
	import ButtonScene;

	public class MainMenuUI extends View {

		public static var uiView:Object =/*[STATIC SAFE]*/{"type":"View","props":{"width":320,"height":570},"compId":2,"child":[{"type":"Sprite","props":{"y":0,"x":0,"name":"background"},"compId":9,"child":[{"type":"Sprite","props":{"y":405,"x":0,"width":320,"texture":"green_box.png","height":165},"compId":10},{"type":"Sprite","props":{"y":0,"x":0,"width":320,"texture":"green_box.png","height":165},"compId":11},{"type":"Sprite","props":{"y":58,"x":60,"width":200,"texture":"ornge_box.png","name":"deathBg","height":48},"compId":12}]},{"type":"Text","props":{"y":66,"x":0,"width":320,"valign":"middle","text":"跳三跳","name":"Death Text","height":32,"fontSize":24,"font":"SimHei","color":"#ffffff","bold":true,"align":"center","runtime":"laya.display.Text"},"compId":14},{"type":"Button","props":{"y":268,"x":112,"width":96,"skin":"green_box.png","height":32},"compId":15,"child":[{"type":"Text","props":{"y":0,"x":0,"width":96,"valign":"middle","text":"开始挑战","height":32,"fontSize":16,"font":"SimHei","color":"#ffffff","align":"center","runtime":"laya.display.Text"},"compId":13},{"type":"Script","props":{"scene":"Level1.scene","runtime":"ButtonScene"},"compId":16}]}],"loadList":["green_box.png","ornge_box.png","Level1.scene"],"loadList3D":[]};
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);

		}

	}
}