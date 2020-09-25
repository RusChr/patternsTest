enum CarType {
    case huge, fast
}


protocol Car {
    func drive()
}


class HugeCar: Car {
    func drive() {
        print("you drive huge car")
    }
}


class FastCar: Car {
    func drive() {
        print("you drive fast car")
    }
}


class CarFactory {
    static func produceCar(type: CarType) -> Car {
        var car: Car
        
        switch type {
        case .fast:
            car = FastCar()
        case .huge:
            car = HugeCar()
        }
        return car
    }
}


let hugeCar = HugeCar()
hugeCar.drive()

let fastCar = FastCar()
fastCar.drive()

let hugeCar1 = CarFactory.produceCar(type: .huge)
hugeCar1.drive()

let fastCar1 = CarFactory.produceCar(type: .fast)
fastCar1.drive()
