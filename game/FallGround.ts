import Tween = Laya.Tween;

export default class FallGround extends Laya.Script{

    constructor() { super(); }

    onTriggerEnter(other:any, self:any, contact:any){
        if (other.label == "player"){
            let obj :Laya.Sprite = this.owner as Laya.Sprite;
            Tween.to(obj, {y:405}, 1000);
            this.owner.getComponent(Laya.BoxCollider).label = "block";
        }
    }
}