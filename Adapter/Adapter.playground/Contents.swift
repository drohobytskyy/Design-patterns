import UIKit

protocol BirdProtocl {
    func sing()
    func fly()
}

class Bird: BirdProtocl {
    func sing() {
        print("I am singing")
    }
    
    func fly() {
        print("I am flying")
    }
}

class Raven {
    func flyAndDestroy() {
        print("I am raven")
    }
    
    func voice() {
        print("krrrr")
    }
}

class RavenAdapter: BirdProtocl {
    private var raven: Raven
    
    init(adaptee: Raven) {
        raven = adaptee
    }
    
    func sing() {
        raven.flyAndDestroy
    }
    
    func fly() {
        raven.voice()
    }
}

func makeBirdTest(bird: BirdProtocl) {
    bird.fly()
    bird.sing()
}

let bird = Bird()
let raven = RavenAdapter(adaptee: Raven())

makeBirdTest(bird: bird)
makeBirdTest(bird: raven)

