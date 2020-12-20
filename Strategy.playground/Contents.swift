protocol SwimBehavior {
    func swim()
}


protocol DiveBehavior {
    func dive()
}


class ProfessionalSwimmer: SwimBehavior {
    func swim() {
        print("professional swimming")
    }
}


class NonSwimmer: SwimBehavior {
    func swim() {
        print("non-swimming")
    }
}


class ProfessionanDiver: DiveBehavior {
    func dive() {
        print("professional diving")
    }
}


class NewbieDiver: DiveBehavior {
    func dive() {
        print("newbie diving")
    }
}


class NonDiver: DiveBehavior {
    func dive() {
        print("non-diving")
    }
}


class Human {
    
    var diveBehavior: DiveBehavior!
    var swimBehavior: SwimBehavior!
    
    func set(diveBehavior: DiveBehavior) {
        self.diveBehavior = diveBehavior
    }
    
    func set(swimBehavior: SwimBehavior) {
        self.swimBehavior = swimBehavior
    }
    
    func performSwim() {
        swimBehavior.swim()
    }
    
    func performDive() {
        diveBehavior.dive()
    }
    
    func run() {
        print("runing")
    }
    
    init(swimBehavior: SwimBehavior, diveBehavior: DiveBehavior) {
        self.swimBehavior = swimBehavior
        self.diveBehavior = diveBehavior
    }
}


let human = Human(swimBehavior: ProfessionalSwimmer(), diveBehavior: NewbieDiver())

human.performDive()
human.performSwim()

human.set(swimBehavior: NonSwimmer())
human.performSwim()

human.set(diveBehavior: ProfessionanDiver())
human.performDive()

human.run()
