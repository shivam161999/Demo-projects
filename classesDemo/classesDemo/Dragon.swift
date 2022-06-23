class Dragon: Enemy {
    var wingspan = 2
    
    func talk(speech : String){
        print("says : \(speech)")
    }
    override func move() {
        print("fly forwards")
    }
    override func attack() {
        super.attack()
        print("spits Fire , does 10 damage ")
    }
}
