import Foundation

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human:Animal{
    func code(){
        print("Typing away...")
    }
}

class Fish:Animal{
    func breatheUnderWater(){
        print("Breathing under water.")
    }
}

let ugur = Human(n: "Ugurcan Kaya")
let angela = Human(n: "Angela Yu")
let nemo = Fish(n: "Nemo 1")



let num = 12
let neighbours: [Any] = [ugur, angela, nemo, num] //Any allows us to mix classes and structures or any other data type such as arrays.




