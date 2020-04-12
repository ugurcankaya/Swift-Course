//Set
    //Order is not guaranty!
    //No Duplicate Variables!
    //Performance
var ages = [18, 33, 55, 17, 94, 26, 33, 17] //array
var emptySet: Set<Int> = []//Initialize Empty Set

var agesSet = Set(ages) //Set(ArrayVariableName) Converting Array into the set variable
print(agesSet) //duplicated variables in array has been removed

agesSet.contains(17) // returns true because 17 is in the set already
agesSet.insert(101) // insert 101 into the set
agesSet.contains(101) // returns true
