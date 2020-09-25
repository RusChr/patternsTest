class DriveVehicle {
    final func startVehicle() {
        haveASeat()
        useProtection()
        lookAtTheMirror()
        turnSignal()
        driveForward()
    }
    
    func haveASeat() {
        preconditionFailure("this method should be overriden")
    }
    
    func useProtection() {
        preconditionFailure("this method should be overriden")
    }
    
    func lookAtTheMirror() {
        preconditionFailure("this method should be overriden")
    }
    
    func turnSignal() {
        preconditionFailure("this method should be overriden")
    }
    
    func driveForward() {
        preconditionFailure("this method should be overriden")
    }
}


class Bicycle: DriveVehicle {
    override func haveASeat() {
        print("sit down on a bicycle seat")
    }
    
    override func useProtection() {
        print("wear a helmet")
    }
    
    override func lookAtTheMirror() {
        print("look at the little mirror")
    }
    
    override func turnSignal() {
        print("show left hand")
    }
    
    override func driveForward() {
        print("pedal")
    }
}


class Car: DriveVehicle {
    override func haveASeat() {
        print("sit down on a car seat")
    }
    
    override func useProtection() {
        print("fasten seat belt")
    }
    
    override func lookAtTheMirror() {
        print("look at the rearview mirror")
    }
    
    override func turnSignal() {
        print("turn on left turn light")
    }
    
    override func driveForward() {
        print("push pedal")
    }
}


let car = Car()
car.startVehicle()

print("#########")

let bicycle = Bicycle()
bicycle.startVehicle()
