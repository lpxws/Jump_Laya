import ShareData from "../game/ShareData";

export default class ButtonScene extends Laya.Script{

    /** @prop {name:scene,tips:"打开关的名称",type:string,default:"Level1.scene"}*/
    private scene:string;

    constructor(){super();}

    onClick(){
        ShareData.start();
        Laya.Scene.open(this.scene);
        if (!Laya.SoundManager.muted) Laya.SoundManager.playMusic("sfx/bgm.mp3", 0);
    }
}