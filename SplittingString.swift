var test1 = "name@university.edu.tr"
var seperatedTest = test1.components(separatedBy: "@")
var seperatedCorp = seperatedTest[1].components(separatedBy: ".")
print(seperatedCorp)
if let _:Int = seperatedCorp.count{
    if !seperatedCorp[0].isEmpty{
        
        if seperatedCorp.contains("edu"){
            print("true")
        }else{
            print("false")
        }
        
        
    }
    
}
