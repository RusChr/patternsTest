//
//  Safe.swift
//  Singleton
//
//  Created by Admin on 01/10/2018.
//  Copyright © 2018 rcher. All rights reserved.
//

class Safe {
    
    var money = 0
    static  let shared = Safe()
    
    private init() {}
    
}
