class Developer{
    //Properties
    var name:String
    var jobTitle:String
    var yearsExp:Int
    var age:Int?
    // Initializer : Have to be defined unless properties are optional with ? sign
    init(name:String, jobTitle:String, yearsExp:Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
    // init(){} //empty initializer
    
    // Methods
    func explainDev(){
        if let age = self.age{
            print("Name : \(self.name), jobTitle: \(jobTitle), Experience : \(yearsExp) years. and he/she is \(age) years old")
        }else{
             print("Name : \(self.name), jobTitle: \(jobTitle), Experience : \(yearsExp) years.")
        }
    }
    
}

class iOSDeveloper:Developer{
    //Special Properties
    var favoriteFramework: String?
    
    //Special Methods
    func speakFavFramework(){
        guard let favFrame = favoriteFramework else {return}
        print(favFrame)
    }
    
    
    override func explainDev() {
        
            print("He is a iOS developer and his fav framework is \(self.favoriteFramework!)")
        
    }
}

let Ugur = iOSDeveloper(name: "Ugur", jobTitle: "Junior", yearsExp: 15)
Ugur.age = 21
Ugur.speakFavFramework()
Ugur.explainDev()
