
export default class ButtonSound extends Laya.Script{
    //private muted:boolean;
    private button:Laya.Button;

    constructor(){super();}

    onEnable(){
        this.button = this.owner as Laya.Button;
        if (Laya.SoundManager.muted){
            this.button.skin = "soundButton.png";
        }else {
            this.button.skin = "muteButton.png";
        }
    }

    onClick(){

        Laya.SoundManager.muted = !Laya.SoundManager.muted;
        if (Laya.SoundManager.muted){
            this.button.skin = "soundButton.png";
        }else {
            this.button.skin = "muteButton.png";
        }
    }
}