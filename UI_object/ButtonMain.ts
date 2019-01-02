
export default class ButtonMain extends Laya.Script{

    constructor(){super();}

    onClick(){
        Laya.Scene.open("MainMenu.scene");
    }
}