//Protocols
    """
        Protols define requirements that need to be included in the struct or classes which's regarding the protocol/
    """

import Foundation

protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true
    
    func layegg(){
        if isFemale {
            print("The bird lays egg.")
        }
    }
 
}
class Airplane : Bird, CanFly{
     func fly() {
        print("Airplane is flying.")
    }
    
}

class Eagle:Bird, CanFly{
    func fly() {
        print("The eagle is flying")
    }
    
    //Eagle can access the super class
    
    func soar(){
        print("Fly above clouds.")
    }
    
}

class Penguen:Bird{
    func swim(){
        print("My penguen is swimming now.")
    }
}


struct FlyingMuseum{
    func FlyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
}



let myPenguin = Penguen()
let myPlain = Airplane()

myPlain.fly()
    // myPenguin.fly() returns error.
let museum = FlyingMuseum()
museum.FlyingDemo(flyingObject: myPlain)
// museum.FlyingDemo(flyingObject: myPenguin) returns error
