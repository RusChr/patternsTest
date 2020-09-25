protocol Vehicle {
    func drive()
}


protocol VehicleFactory {
    func produce() -> Vehicle
}


class Car: Vehicle {
    func drive() {
        print("drive a car")
    }
}


class Truck: Vehicle {
    func drive() {
        print("drive a truck")
    }
}


class Bus: Vehicle {
    func drive() {
        print("drive a bus")
    }
}


class CarFactory: VehicleFactory {
    func produce() -> Vehicle {
        print("car is created")
        return Car()
    }
}


class TruckFactory: VehicleFactory {
    func produce() -> Vehicle {
        print("truck is created")
        return Truck()
    }
}


class BusFactory: VehicleFactory {
    func produce() -> Vehicle {
        print("bus is created")
        return Bus()
    }
}


let carFactory = CarFactory()
let car = carFactory.produce()
car.drive()

let truckFactory = TruckFactory()
let truck = truckFactory.produce()
truck.drive()
