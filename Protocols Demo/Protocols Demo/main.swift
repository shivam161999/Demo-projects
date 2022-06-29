protocol CanFly{
    func fly()
}

class Bird{
    
    var isFemale = true
    
    func layEggs(){
        if isFemale{
            print("The bird makes another bird in a shell")
        }
    }
}

class Eagle : Bird , CanFly{
    
    func fly() {
        print("Eagle flps its wings and lifts off in the sky")
    }
    
    
    func soar(){
        print("The eagle glides in the air using air currents")
    }
}

class Penguin : Bird{
    func swim(){
        print("the Penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject : CanFly){
        flyingObject.fly()
    }
}

struct Airplane : CanFly  {
    
    func fly() {
        print("airplane uses engine to lifts off in the sky")
    }
    
}

let myEagle = Eagle()
let mypenguin = Penguin()
let museum = FlyingMuseum()
let myplane = Airplane()
museum.flyingDemo(flyingObject: myplane)

