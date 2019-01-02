import MovingBlock from "./MovingBlock";

export default class Point extends Laya.Script{
    private point:Laya.Sprite;
    private rotateSpeed:number = 4;

    private hitDelay:number;
    private hitTimer:number = 500;
    private hasExpired:boolean;

    public switchOn:boolean = false;

    /** @prop {name:movingBlock1,tips:"移动障碍1",type:Node}*/
    private movingBlock1: Laya.Sprite;    
    /** @prop {name:movingBlock2,tips:"移动障碍2",type:Node}*/
    private movingBlock2: Laya.Sprite;
    /** @prop {name:coPoint,tips:"相关触发点",type:Node}*/
    private coPoint: Laya.Sprite;

    constructor() { super(); }

    onEnable():void{ 
        this.point = this.owner as Laya.Sprite
        this.hitDelay = Date.now();

    }

    onUpdate():void{
        this.point.rotation += 4;

    }

    onTriggerEnter(other:any, self:any, contact:any){
        if (other.label == "player"){
            let now:number = Date.now();
            this.hasExpired = ((now - this.hitDelay) > this.hitTimer);
            if(this.hasExpired){
                this.switchOn = !this.switchOn;
                if (this.coPoint != null){
                    let p:Point = this.coPoint.getComponent(Point);
                    p.switchOn = this.switchOn;
                }
                if (this.switchOn){
                    this.BlocksMove();
                }else{
                    this.BlocksBack();
                }
                this.hitDelay = Date.now();
            }
        }
    }

    private BlocksMove():void{
        if (this.movingBlock1 != null){
            let a:MovingBlock = this.movingBlock1.getComponent(MovingBlock);
            a.MoveTo();
        }
    }

    private BlocksBack():void{        
        if (this.movingBlock1 != null){
        let a:MovingBlock = this.movingBlock1.getComponent(MovingBlock);
        a.MoveBack();
         }
    }

}