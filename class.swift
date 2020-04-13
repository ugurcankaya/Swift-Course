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

let ugur = Developer(name: "Ugur", jobTitle: "iOS Developer", yearsExp: 0)
ugur.explainDev()
ugur.age = 21
ugur.explainDev()

