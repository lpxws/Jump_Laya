
import ShareData from "../game/ShareData";
export default class LastLevel extends Laya.Script{


    constructor() { super(); }

    onEnable():void{
        let bestText = this.owner.getChildByName("BestText")as Laya.Text;
        bestText.text = ShareData.currentTries.toString();
        ShareData.UpdateRecord();
        ShareData.Save();
    }
}