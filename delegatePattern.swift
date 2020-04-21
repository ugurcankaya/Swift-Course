protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHander{
    var delegate:AdvancedLifeSupport?
    
    func assessSituation(){
        print("Can you tell me what happened?")
    }
    func medicalEmergency(){
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport{
    init(handler: EmergencyCallHander) {
        handler.delegate = self
    }
    func performCPR() {
        print("CPR will have been performed to patient asap.")
    }
}

class Doctor:AdvancedLifeSupport{
    init(handler: EmergencyCallHander){
        handler.delegate = self
    }
    
    func performCPR() {
        print("Doctor will be performing cpr.")
    }
    
    func useStathescope(){
        print("Listen heart")
    }
}

class Surgeon : Doctor {
    //it has AdvancedLifeSupport and have the function from super class doctor.
    override func performCPR() {
        super.performCPR()
        electricDrill()
        print("It was performed by a Surgeon.")
    }
    func electricDrill(){
        print("Whir...")
    }
}

let emilio = EmergencyCallHander()
//let pete = Paramedic(handler: emilio)
let angela = Surgeon(handler: emilio)
emilio.assessSituation()
emilio.medicalEmergency()




