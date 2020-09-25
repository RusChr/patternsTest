//let arr = [1, 2, 3, 4]
//let iter = arr.makeIterator()


class Driver {
    let isGoodDriver: Bool
    let name: String
    
    init(isGood: Bool, name: String) {
        self.isGoodDriver = isGood
        self.name = name
    }
}


class Car {
    var goodDriverIterator: DriverIterator {
        return DriverIterator(drivers: drivers)
    }
    
    private let drivers = [Driver(isGood: true, name: "Mark"),
                           Driver(isGood: false, name: "Ivan"),
                           Driver(isGood: true, name: "Maria"),
                           Driver(isGood: false, name: "Morgan")]
}


extension Car: Sequence {
    func makeIterator() -> DriverIterator {
        return DriverIterator(drivers: drivers)
    }
}


class DriverIterator: IteratorProtocol {
    private let drivers: [Driver]
    private var current = 0
    
    init(drivers: [Driver]) {
        self.drivers = drivers
    }
    
    func next() -> Driver? {
        defer {
            current += 1
        }
        return drivers.count > current ? drivers[current] : nil
    }
    
    func allGoodDrivers() -> [Driver] {
        return drivers.filter{ $0.isGoodDriver }
    }
    
    func allBadDrivers() -> [Driver] {
        return drivers.filter{ !$0.isGoodDriver }
    }
}


let car = Car()
let goodDriverIterator = car.goodDriverIterator.next()

let goodDriverIteratorViaSequence = car.makeIterator().allGoodDrivers()
let badDriverIteratorViaSequence = car.makeIterator().allBadDrivers()
