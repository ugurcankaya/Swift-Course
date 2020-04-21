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
let emilio = EmergencyCallHander()
let pete = Paramedic(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()




