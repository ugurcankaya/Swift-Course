import UIKit

func calculateSquare(square: Int) -> Int{
    return square*square
}


//DEF a closure is a function that can take parameters and return value without any name and closures can be stored in a variable.

var calcSquare: (Int) -> Int = {(values) in //take an int and return another int as having the parameter called values
    return values*values
}


calcSquare(5) //returns 5*5 = 25




//  ---------------------------------------

//          ### closure examples ###


//1-closure without any parameter and void
var sayHi:() -> Void = {
    print("Hi!")
}
//sayHi() // prints Hi!



//2-closure with a string paramater and it returns another string
var sayIt:(String) -> String = {(txt) in
    return "She says: \(txt)"
}
sayIt("Say my name!") //STORES she says: Say my name


//3-closure with two parameters
var sayThem:(String, String) -> String={ (name1, name2) in
    return "Name 1: \(name1) and Name 2 : \(name2)"
}
sayThem("Jen", "Casey")


//4-the closure where the return type is defined in the function body
var helloYou:(String)->String = {(value1) -> String in
    return "Hello Dear, \(value1)"
}

//  ---------------------------------------




//DEF: When we use closures, we don't always have to you paramater names to call them.

var square_:(Int)-> Int = { (value) in
    return value * value
}
square_(5) //25


var squareShort:(Int)->Int = { return $0 * $0 }
squareShort(5) //25

//and we also don't have to use the return sign
var squareShorter:(Int)->Int = { $0 * $0 }
squareShorter(5) //25



//and example of use of closures as a parameter in a function
func calcEvent(val : Int, handler:(Bool) -> Void) {
    let sumCalc = val % 5 == 0
    handler(sumCalc)
}

calcEvent(val: 21) { (result) -> Void in
    print("Result is diveded 5: \(result)") //false
}
