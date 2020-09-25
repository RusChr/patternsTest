import Foundation


protocol Subject {
    
    func add(observer: PropertyObserver)
    func remove(observer: PropertyObserver)
    func notify(withString string: String)
}


protocol PropertyObserver {
    
    func didGet(newTask task: String)
}


class Teacher: Subject {
    
    var observerCollection = NSMutableSet()
    var homeTask = "" {
        didSet {
            notify(withString: homeTask)
        }
    }
    
    func add(observer: PropertyObserver) {
        observerCollection.add(observer)
    }
    
    func remove(observer: PropertyObserver) {
        observerCollection.remove(observer)
    }
    
    func notify(withString string: String) {
        for observer in observerCollection {
            (observer as! PropertyObserver).didGet(newTask: string)
        }
    }
}


class Pupil: NSObject, PropertyObserver {
    
    var homeTask = ""
    
    func didGet(newTask task: String) {
        homeTask = task
        print("new homework to be done")
    }
}


let teacher = Teacher()
let pupil = Pupil()

teacher.add(observer: pupil)
teacher.homeTask = "задача №3 на стр 21"

pupil.homeTask

let pupil1 = Pupil()
teacher.add(observer: pupil1)
teacher.homeTask = "test homework 12341234"

pupil.homeTask
pupil1.homeTask
