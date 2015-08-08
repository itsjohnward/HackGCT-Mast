//
//  ViewController.swift
//  HackGCT-Mast
//
//  Created by John on 8/8/15.
//  Copyright (c) 2015 hackgctmast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dataInterpreter = DataInterpreter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    func fetch(completion: () -> Void) {
        println("test")
        completion()
    }
    
    func update() {
        println(dataInterpreter.getTotalDataUsage())
    }
    
    @IBAction func didTapUpdate(sender: UIButton) {
        fetch { self.update() }
    }
}

