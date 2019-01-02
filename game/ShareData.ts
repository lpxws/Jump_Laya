export default class ShareData
{
    public static bestScore:number;
    public static bestTry:number;
    public static currentTries:number;
    public static roundNumber:number;
    public static topRound:number;

    private static saveData:any;
    public static isSaved:boolean;

    public static Load():boolean{
        //if (Laya.LocalStorage.getItem("Save Data") == null){
        //var sessionStorage:any = Laya.Browser.window.sessionStorage;
        //if (sessionStorage.getItem("Save Data") == null){
        //if (wx.getStorage({key:"SaveData", success: this.func, fail:this.func, complete:this.func}) == null){
        if (Laya.MiniLocalStorage.getItem("Save Data") == null){
            this.isSaved = false;
            this.init();
            return false;
        }else{
           // let loadData = Laya.LocalStorage.getJSON("Save Data");
           let loadData = Laya.MiniLocalStorage.getJSON("Save Data");
           //let loadData = JSON.parse(sessionStorage.getItem("Save Data"));
           //let loadData:any = wx.getStorage({key:"SaveData", success: this.func, fail:this.func, complete:this.func});
            this.topRound = loadData.topRound;
            this.bestTry = loadData.bestTry;
            return true;
        }
    }

    private static init():void{
        this.start();
        this.bestScore = 0;
        this.bestTry = 9999;
        this.topRound = 0;
        this.saveData = {"bestTry":this.bestTry, "topRound": this.topRound};
        this.Save();
    }
    
    public static start():void{
        this.currentTries = 1;
        this.roundNumber = 1;
    }


    public static Save():void{
        this.saveData = {"bestTry":this.bestTry, "topRound": this.topRound};
        //wx.setStorage({key:"Save Data", data: this.saveData, success: this.func, fail:this.func, complete:this.func});
        //Laya.LocalStorage.setJSON("Save Data", this.saveData);
        Laya.MiniLocalStorage.setJSON("Save Data", this.saveData);
        //var sessionStorage:any = Laya.Browser.window.sessionStorage;
        //sessionStorage.setItem("Save Data", JSON.stringify(this.saveData));
        this.isSaved = true;
    }

    private static func():void{
        
    }

    public static UpdateRound():void{
        if (this.roundNumber > this.topRound) this.topRound = this.roundNumber;
    }

    public static UpdateRecord():void{
        if (this.currentTries < this.bestTry) this.bestTry = this.currentTries;
    }
}