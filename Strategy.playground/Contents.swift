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
    
    func setDiveBehavior(db: DiveBehavior) {
        self.diveBehavior = db
    }
    
    func setSwimBehavior(sb: SwimBehavior) {
        self.swimBehavior = sb
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
//human.setDiveBehavior(db: ProfessionanDiver())
//human.setSwimBehavior(sb: NonSwimmer())

human.performDive()
human.performSwim()

human.setSwimBehavior(sb: NonSwimmer())
human.performSwim()
