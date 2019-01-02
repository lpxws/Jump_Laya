
import Tween = Laya.Tween;
    
export default class MovingBlock extends Laya.Script{
    
    /** @prop {name:terminalY,tips:"移动的目标坐标",type:number}*/
    private terminalY: number
    /** @prop {name:startY,tips:"返回的坐标",type:number}*/
    private startY: number
    /** @prop {name:speedY,tips:"移动速度的时间系数，越大越慢",type:number}*/
    private speedY: number
    
    constructor() { super(); }

    onEnable(){
        this.MoveBack();
    }

    public MoveTo(){
        let owner:Laya.Sprite = this.owner as Laya.Sprite;
        let a = Math.abs(owner.y - this.terminalY);
        Tween.to(owner, {y:this.terminalY}, a * this.speedY);
    }

    public MoveBack(){
        let owner:Laya.Sprite = this.owner as Laya.Sprite;
        let a = Math.abs(owner.y - this.startY);
        Tween.to(owner, {y:this.startY}, a * this.speedY);
    }
}