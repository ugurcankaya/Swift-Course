enum Phone{
    case iPhone11Pro
    case iPhoneSE
    case iPhone7
    case pixel
    case nokia
}

func getUgursOpinion(on phone:Phone){
    switch phone {
    case .iPhone11Pro:
        print("Very Good")
    default:
        print("Not ood as good as iPhone 11 Pro")
    }
}


getUgursOpinion(on: .iPhone11Pro)
getUgursOpinion(on: .iPhone7) //switch cases are being used with . precision
