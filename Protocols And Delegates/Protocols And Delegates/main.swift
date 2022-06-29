protocol AdvancedLifeSupport{
    func performCPR()
}

class EmergencyCallHandler{
    var delegate : AdvancedLifeSupport?

    func accessSituation(){
        print("Can you tell me what happened ")
    }
    func medicalEmergency(){
        delegate?.performCPR()
    }
}

struct Paramedic : AdvancedLifeSupport{
    
    init(handler : EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("perform Chest compressions , 30 per seconds ")
    }
}

class Doctor : AdvancedLifeSupport{
    
    init(handler : EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor perform Chest compressions , 30 per seconds ")
    }
    func useStetescope(){
        print("listen heartBeats")
    }
}

class Surgon : Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sing while giving CPR")
    }
    func useElecricDrill(){
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
let shivam = Surgon (handler: emilio)

emilio.accessSituation()
emilio.medicalEmergency()
