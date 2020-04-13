struct Developer{
    //Properties
    var name:String
    var jobTitle:String
    var yearsExp:Int
        
}
 //struct has auto-init functions
var Ugur = Developer(name: "Ugur", jobTitle: "Junior", yearsExp: 0)
print(Ugur.name)
var Sean = Ugur
Sean.name = "Sean" // doesn't affect Ugur's reference because struct is a value type variable unlike classes
print(Ugur.name)
print(Sean.name)
