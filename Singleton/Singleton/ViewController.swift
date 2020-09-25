//
//  ViewController.swift
//  Singleton
//
//  Created by Admin on 01/10/2018.
//  Copyright © 2018 rcher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let safe = Safe.shared
        print(safe.money)
    }


}

