//Enum Raw Value

enum Phone: String{
    case iPhone11Pro = "This will be my next phone"
    case iPhoneSE    = "I didn't buy that."
    case Nokia       = "Too hard to break"
    case Pixel       = "Camera is great"
}


func getMyOpinion(on phone: Phone){
    
    print(phone.rawValue) // raw value returns the value of enum variable
    
}
getMyOpinion(on: .iPhone11Pro)
