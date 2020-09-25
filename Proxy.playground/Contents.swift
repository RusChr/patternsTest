//class User {
//    let id = "123"
//}
//
//
//protocol ServerProtocol {
//    func grantAccess(user: User)
//    func denyAccess(user: User)
//}
//
//
//class ServerSide: ServerProtocol {
//    func grantAccess(user: User) {
//        print("access granted to user id = \(user.id)")
//    }
//
//    func denyAccess(user: User) {
//        print("access denied to user id = \(user.id)")
//    }
//}
//
//
//class ServerProxy: ServerProtocol {
//    lazy private var server = ServerSide()
//
//    func grantAccess(user: User) {
//        server.grantAccess(user: user)
//    }
//
//    func denyAccess(user: User) {
//        server.denyAccess(user: user)
//    }
//}
//
//
//let user = User()
//let proxy = ServerProxy()
//proxy.grantAccess(user: user)
//proxy.denyAccess(user: user)

///////////////////////
///////////////////////





class User {
    let name = "Petr"
    let pass = "123"
}


protocol ServerProtocol {
    func grantAccess(user: User)
}


class ServerSide: ServerProtocol {
    func grantAccess(user: User) {
        print("access granted to user name = \(user.name)")
    }
}


class ServerProxy: ServerProtocol {
    private var server: ServerSide!
    
    func grantAccess(user: User) {
        guard server != nil else {
            print("access can't be granted")
            return
        }
        server.grantAccess(user: user)
    }
    
    func authenticate(user: User) {
        guard user.pass == "123" else { return }
        print("user authenticated")
        server = ServerSide()
    }
}



let user = User()
let proxy = ServerProxy()

proxy.grantAccess(user: user)
proxy.authenticate(user: user)
proxy.grantAccess(user: user)


