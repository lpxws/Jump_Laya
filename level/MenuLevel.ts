
import ShareData from "../game/ShareData";
    
export default class MenuLevel extends Laya.Script{
    constructor() { super(); }

    onEnable():void{
        ShareData.Load();

        let bestText = this.owner.getChildByName("BestText")as Laya.Text;
        if (ShareData.bestTry == 9999) bestText.text = "未通关"
        else bestText.text = ShareData.bestTry.toString();
    }
}