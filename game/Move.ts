import Tween = Laya.Tween;
    
export default class Move extends Laya.Script{
    /** @prop {name:isHorizontalMove, tips:"是否横向移动",type:Bool} */
    private isHorizontalMove:boolean;
    /** @prop {name:terminalX,tips:"横向移动终点坐标",type:Number}*/
    private terminalX: number
    /** @prop {name:startX,tips:"横向移动起点坐标",type:number}*/
    private startX: number
    /** @prop {name:speedX,tips:"横向移动速度",type:number}*/
    private speedX: number


    /** @prop {name:isVerticalMove, tips:"是否纵向移动",type:Bool} */
    private isVerticalMove:boolean;
    /** @prop {name:terminalY,tips:"纵向移动终点坐标",type:Number}*/
    private terminalY: number
    /** @prop {name:startY,tips:"纵向移动终点坐标",type:number}*/
    private startY: number
    /** @prop {name:speedY,tips:"纵向移动速度",type:number}*/
    private speedY: number

    private rig: Laya.RigidBody;
    private obj: Laya.Sprite; 

    constructor() { super(); }

    onEnable(){
        this.rig = this.owner.getComponent(Laya.RigidBody);
        this.obj = this.owner as Laya.Sprite;
        if (this.isHorizontalMove) Tween.to(this.owner as Laya.Sprite, {x:this.terminalX}, 200);
        if (this.isVerticalMove) Tween.to(this.owner as Laya.Sprite, {y:this.terminalY}, 200);
    }

    onUpdate(){
        if (this.isHorizontalMove) this.HortizontalMove();
        if (this.isVerticalMove) this.VerticalMove();
    }

    public HortizontalMove():void{
        if (this.obj.x == this.startX) Tween.to(this.obj, {x:this.terminalX}, this.speedX);
        else if (this.obj.x == this.terminalX) Tween.to(this.obj, {x:this.startX}, this.speedX);
    }

    public VerticalMove():void{
        if (this.obj.y == this.startY) Tween.to(this.obj, {y:this.terminalY}, this.speedY);
        else if (this.obj.y == this.terminalY) Tween.to(this.obj, {y:this.startY}, this.speedY);

    }

}
