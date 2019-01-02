import Player from "../game/Player";
import GameConfig from "../GameConfig";
import ShareData from "../game/ShareData";

export default class _Level extends Laya.Script{
    /** @prop {name:Player,tips:"玩家容器预制体对象",type:Prefab}*/
    protected Player:Laya.Prefab; 
    private player:Laya.Sprite;
    private playerScript:Player;
    /** @prop {name:nextScene,tips:"下一关名称",type:string,default:"Level1.scene"}*/
    private nextScene:string;

    private round:number;
    private timesTried:number;

    constructor() { super(); }

    onEnable():void{
        //主菜单添加后删除
        //ShareData.init();

        this.player = this.owner.getChildByName("Player") as Laya.Sprite;
        this.playerScript = this.player.getComponent(Player);
        this.player.pos(-100, 325);

        //update the left number of levels to finish
        let roundText = this.owner.getChildByName("Round Text")as Laya.Text;
        roundText.text = "还有" + (40 - ShareData.roundNumber).toString() + "关";

        //update total death number
        let timesText = this.owner.getChildByName("Death Text")as Laya.Text;
        timesText.text = "第" + ShareData.currentTries.toString() + "次重生";

        this.timesTried = 1;



        /*
        const bannerAd =  wx.createBannerAd({
            adUnitId: 'xxxx',
            style: {
              left: 10,
              top: 76,
              width: 320
            }
          })
          
          bannerAd.show()
          */
    }

    onUpdate():void{
        if (this.player.x >= GameConfig.width && this.playerScript.direction >0) 
        {
            this.goToNextLevel();
        }
        if (this.player.x <= 0 && this.playerScript.direction <0)
        {
            this.goToNextLevel();
        }

        if (this.playerScript.isDead()){
            ShareData.currentTries ++; 
            this.timesTried ++;
            let timesText = this.owner.getChildByName("Death Text")as Laya.Text;
            timesText.text = "第" + ShareData.currentTries.toString() + "次重生";
            this.playerScript.reset(-32, 330);
        }

    }

    onStageMouseDown(e: Laya.Event):void{
        //停止事件冒泡，提高性能，当然也可以不要
        e.stopPropagation();
        //notify player to jump
        if (this.player.x >0){
            this.playerScript.notifyInput(true);
        }

    }

    onStageMouseUp(e: Laya.Event):void{
        e.stopPropagation();
        //notify player to stop jumping
        if (this.player.x >0){
            this.playerScript.notifyInput(false);
        }
    }

    private goToNextLevel():void{
        ShareData.roundNumber ++;
        ShareData.UpdateRound();
        ShareData.Save();
        Laya.Scene.open(this.nextScene);
    }
}