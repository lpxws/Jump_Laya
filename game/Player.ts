import ShareData from "./ShareData";

export default class Player extends Laya.Script{
    //parameters of jump speed
    private landSpeed:number = 2.3;
    private jumpSpeed:number = 1.36;
    private maxJumpSpeed:number = 2.5;
    private jumpAcc:number = 0.2;
    //private jumpDec:Number = 8.53;
    private basicJumpSpeed:number = 2.05;
    private velocityX:number;
    private velocityY:number;
    public direction:number;

    //parameters of jump delay
    private jumpDelay:number;
    private jumpTimer:number = 200;
    private doubleJumpDelay:number;
    private doubleTimer:number = 100;
    private isJump:Boolean;
    private timesJump:number;
    private rig:Laya.RigidBody;
    //player states
    private onInput:boolean;
    private state:Number;		
    public STATE_LAND:Number = 0;
    private STATE_JUMP:Number = 1;
    private STATE_FALL:Number = 2;
    private STATE_DEAD:Number = 3;

    public playerColor:number;

   constructor() { super(); }

   onEnable():void{
       
       this.initData();
   }

    /**使用对象池创建爆炸动画 */
    createEffect(): Laya.Animation {
        let ani: Laya.Animation = new Laya.Animation();
        ani.loadAnimation("OverAni.ani");
        ani.on(Laya.Event.COMPLETE, null, recover);
        function recover(): void {
            ani.removeSelf();
            Laya.Pool.recover("effect", ani);
        }
        return ani;
    }

   onUpdate():void{
       let now = Date.now();
       switch(this.state)
       {
           case this.STATE_LAND:
                if (this.onInput) this.jump();
                break;
           case this.STATE_JUMP:
                if (this.onInput) this.velocityY += this.jumpAcc;
                if (this.velocityY > this.maxJumpSpeed) this.velocityY = this.maxJumpSpeed;
                if (this.isJump){
                    this.isJump = false;
                    this.jumpDelay = Date.now();
                }
                this.rig.setVelocity({x:this.jumpSpeed * this.direction, y:-this.velocityY * this.direction});
                let hasExpired:boolean = ((now - this.jumpDelay) > this.jumpTimer);
                if (!this.onInput ||hasExpired) this.fall();
                break;
           case this.STATE_FALL:
                let dobuleExpired:boolean = (now - this.doubleJumpDelay) > this.doubleTimer; 
                if(this.onInput && this.timesJump <3 && dobuleExpired) this.jump();
                break;
           case this.STATE_DEAD:
                //this.kill();
                break; 
       }
   }

   onTriggerEnter(other:any, self:any, contact:any){
       if (other.label == "block"){
           Laya.SoundManager.playSound("sfx/crash.mp3");
           this.setState(this.STATE_DEAD);

           let effect: Laya.Animation = Laya.Pool.getItemByCreateFun("effect", this.createEffect, this);
           let a:Laya.Sprite = this.owner as Laya.Sprite;
           effect.pos(a.x, a.y);
           this.owner.parent.addChild(effect);
           if (ShareData.roundNumber < 11){
               effect.play(0, false, "ani1");
           }else if (ShareData.roundNumber < 21){
                effect.play(0, false, "ani2");
           }else if (ShareData.roundNumber < 31){
                effect.play(0, false, "ani3");
            }else{
                effect.play(0, false, "ani4");
            }
       }else if (other.label == "JumpPoint"){
            this.rig.setVelocity({x:this.jumpSpeed * this.direction, y:-this.basicJumpSpeed * 1.5 * this.direction});
       }else if (other.label == "ground" && this.state == this.STATE_FALL){
           this.land();
       }
       if (other.label == "ReversePoint"){
           this.reverse(320, 188);
       }
   }



   private initData():void{
       this.rig = this.owner.getComponent(Laya.RigidBody);
       this.direction = 1;
       this.rig.gravityScale = Math.abs(this.rig.gravityScale);
       this.onInput =false;
       this.land();
   }
   
   private jump():void{
       this.timesJump ++;
       this.setState(this.STATE_JUMP);
       this.isJump = true;
       this.rig.setVelocity({x:this.jumpSpeed * this.direction, y:-this.basicJumpSpeed * this.direction});
       this.velocityY = this.basicJumpSpeed;
       Laya.SoundManager.playSound("sfx/jump" + this.timesJump.toString() + ".mp3");
   }

   public land():void{
       this.setState(this.STATE_LAND);
       this.rig.setVelocity({x:this.landSpeed * this.direction, y:0});
       this.timesJump = 0;
       this.isJump = false;
   }

   private fall():void{
       this.setState(this.STATE_FALL);
       this.onInput = false;
       this.doubleJumpDelay = Date.now();
       //reset double jump delay
   }

   private setState(state:Number):void{
       this.state = state;
   }

   public notifyInput(bool: boolean):void{
       this.onInput = bool;
   }
   
   public reset(x:number, y:number):void{
       let a:Laya.Sprite = this.owner as Laya.Sprite;
       a.pos(x, y);
       a.rotation = 0;
       this.initData();
   }

   public reverse(x:number, y:number):void{
       let a:Laya.Sprite = this.owner as Laya.Sprite;
       a.pos(x, y);
       this.direction = -1;
       this.rig.gravityScale *= this.direction;
       this.land();
   }

   public isDead():boolean{
       if (this.state == this.STATE_DEAD)return true;
       else return false;
   }

}