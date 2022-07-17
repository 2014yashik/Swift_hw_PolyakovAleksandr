import UIKit

enum Engine{
    case on, off
}
enum Doors{
    case open, close
}



struct Sportcar {
    let brend: String
    let firstyear: Int
    let fullBag: Int
    var engine: Engine
    var doors: Doors
    let maxspeed: Int
    var freeBag: Int
    
    
    mutating func closeDoor() {
        self.doors = .close
    }
    mutating func openDoor() {
        self.doors = .open
    }
    
    mutating func startEngine() {
        self.engine = .on
    }
    mutating func stopEngine() {
        self.engine = .off
    }
    
    mutating func addBag (newBag: Int) {
        if newBag <= freeBag{
            freeBag = fullBag - newBag
        }
        else{
            print("nedostatochno mesta")
        }
    }
    
}

var car1 = Sportcar (brend: "Honda", firstyear: 2020, fullBag: 200, engine: .off, doors: .close, maxspeed: 220, freeBag: 200)

car1.addBag(newBag: 55)

print(car1)

var car2 = Sportcar (brend: "Toyota", firstyear: 2021, fullBag: 200, engine: .off, doors: .close, maxspeed: 250, freeBag: 150)


struct Trunkcar {
    let brend: String
    let firstyear: Int
    var fullBag: Int
    var engine: Engine
    var doors: Doors
        
    let maxspeed: Int
    var freeBag: Int
        
        
    mutating func closeDoor() {
        self.doors = .close
    }
    mutating func openDoor() {
        self.doors = .open
    }
        
    mutating func startEngine() {
        self.engine = .on
    }
    mutating func stopEngine() {
        self.engine = .off
    }
    
    mutating func addBag (newBag: Int) {
        if newBag <= freeBag{
            freeBag = fullBag - newBag
        }
        else{
            print("nedostatochno mesta")
        }
    }
}

var Bigcar1 = Trunkcar (brend: "Volvo", firstyear: 2010, fullBag: 800, engine: .off, doors: .close, maxspeed: 150, freeBag: 500)


