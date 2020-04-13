var ages:[Int] = []
ages.sort()

let NotOptOldestAge = ages.last // returns nil



// if let
if let oldestAge = ages.last{
    print(oldestAge) //return if it is not nil
}else{
    //if it is nil
    print("There is no age in the array")
}



// nil coalescing
let oldestAge = ages.last ?? 999 // defining default value if it is nil
print(oldestAge) //prints the oldest age if it is not nil, else prints 999




//guard
func getOldestAge(){
    guard let oldestAge = ages.last else {
        return //we have to return if it is nil
        //nothing happens if it is nil, like breaking function
    }
    print("Oldest age is \(oldestAge)") //works if it is not returned by our guard
}

getOldestAge()






//force unwrap = super-dangerous !:force
let oldestAgee = ages.last! //returns error if it is nil
