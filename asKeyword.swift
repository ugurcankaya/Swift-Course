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

let neighbours = [ugur, angela, nemo] //those three have common superclass.

func findNemo(from animals:[Animal]){

    for Animal in animals{
        if Animal is Fish{
            print("We've found " + Animal.name)
            let fish = Animal as! Fish //forced downcast
            fish.breatheUnderWater()
            let animalFish = fish as Animal // as doesn't have ! or ? cuze it always working. Upcast
        }
    }
}

findNemo(from: neighbours)

// let fish = neighbours[0] as! Fish //returns error because 0.ind of neighbours is an human and we forced it to be converted into a fish.
if let fish = neighbours[0] as? Fish {
    fish.breatheUnderWater()
}else{
    print("It didn't work") //returns it didn't work cuze neighbours[0] is a human not a fish.
}
