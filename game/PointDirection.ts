import Player from "./Player";

export default class PointDirection extends Laya.Script{
    /** @prop {name:resetX,tips:"玩家传送X轴坐标",type:number}*/
    private resetX:number;
    /** @prop {name:resetY,tips:"玩家传送Y轴坐标",type:number}*/
    private resetY:number;

    constructor() { super(); }

    onTriggerEnter(other:any, self:any, contact:any){
        if (other.label == "player"){
            let obj = other as Laya.Sprite;
            let player:Player = obj.getComponent(Player);
            player.reverse(this.resetX, this.resetY);
        }
    }
}