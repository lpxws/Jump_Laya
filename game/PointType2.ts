import MovingBlock from "./MovingBlock";

export default class PointType2 extends Laya.Script{
    //private point:Laya.Sprite;
    private rotateSpeed:number = 4;

    private hitDelay:number;
    private hitTimer:number = 500;
    private hasExpired:boolean;

    //public switchOn:boolean = false;

    /** @prop {name:movingBlock1,tips:"移动障碍1",type:Node}*/
    private movingBlock1: Laya.Sprite;    
    /** @prop {name:movingBlock2,tips:"移动障碍2",type:Node}*/
    private movingBlock2: Laya.Sprite;
    /** @prop {name:movingBlock3,tips:"移动障碍2",type:Node}*/
    private movingBlock3: Laya.Sprite;
    /** @prop {name:movingBlock4,tips:"移动障碍4",type:Node}*/
    private movingBlock4: Laya.Sprite;    
    /** @prop {name:movingBlock5,tips:"移动障碍5",type:Node}*/
    private movingBlock5: Laya.Sprite;
    /** @prop {name:movingBlock6,tips:"移动障碍6",type:Node}*/
    private movingBlock6: Laya.Sprite;
    /** prop {name:coPoint,tips:"相关触发点",type:Node}*/
    //private coPoint: Laya.Sprite;

    constructor() { super(); }

    onEnable():void{ 
        //this.point = this.owner as Laya.Sprite
        this.hitDelay = Date.now();

    }

    onUpdate():void{
        //this.point.rotation += 4;
    }

    onTriggerEnter(other:any, self:any, contact:any){
        if (other.label == "player"){
            let now:number = Date.now();
            this.hasExpired = ((now - this.hitDelay) > this.hitTimer);
            if(this.hasExpired){
               this.BlocksMove();
                this.hitDelay = Date.now();
            }
        }
    }

    private BlocksMove():void{
        if (this.movingBlock1 != null){
            let a:MovingBlock = this.movingBlock1.getComponent(MovingBlock);
            a.MoveBack();
        }
        if (this.movingBlock2 != null){
            let b:MovingBlock = this.movingBlock2.getComponent(MovingBlock);
            b.MoveBack();
        }
        if (this.movingBlock3 != null){
            let c:MovingBlock = this.movingBlock3.getComponent(MovingBlock);
            c.MoveBack();
        }
        if (this.movingBlock4 != null){
            let c:MovingBlock = this.movingBlock4.getComponent(MovingBlock);
            c.MoveBack();
        }
        if (this.movingBlock5 != null){
            let c:MovingBlock = this.movingBlock5.getComponent(MovingBlock);
            c.MoveBack();
        }
        if (this.movingBlock6 != null){
            let c:MovingBlock = this.movingBlock6.getComponent(MovingBlock);
            c.MoveBack();
        }
    }

}