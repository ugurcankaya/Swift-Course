struct Town{
    let name:String
    var citizens: [String]
    var resources: [String:Int]
    
    init(citizens: [String], name: String, resources:[String:Int]) {
        self.citizens = citizens
        self.name = name
        self.resources = resources
    }
    
    mutating func harvestWeed(){
        self.resources["Weed"] = 100 //self has a invisible let precursor and let is immutable
    }
}
//mutating can't be called in let variables like let myTown
var myTown = Town(citizens: ["Ugur", "Noyan", "Metin", "Ali"], name: "Igorland", resources: ["Weed": 100, "Hash": 15])
myTown.citizens.append("Ahmet")
myTown.harvestWeed()
print(myTown.resources)

