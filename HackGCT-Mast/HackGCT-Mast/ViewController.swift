//
//  ViewController.swift
//  HackGCT-Mast
//
//  Created by John on 8/8/15.
//  Copyright (c) 2015 hackgctmast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var money_saved: UILabel!
    @IBOutlet var data_progress: UIView!
    @IBOutlet weak var progress: UIProgressView!
    var dataLimit = 4.0;
    var data = 0.0;
    @IBOutlet weak var data_label: UILabel!
    let di = DataInterpreter()
    
    func updateProgress() {
        data = di.getTotalDataUsage()
        //progressLabel.text = "0%"
        data_label.text = data.description + "/" + dataLimit.description;
        if (data <= dataLimit) {
            progress.setProgress((Float)(data/dataLimit), animated: true);
        }
        if (data >= dataLimit) {
            progress.setProgress((Float)(1.0), animated: true);
            progress.progressTintColor = UIColor.redColor();
            //progress.trackTintColor = UIColor.redColor();
        }
    }
    
    @IBAction func button(sender: AnyObject) {
        updateProgress()
    }
    
<<<<<<< HEAD
    var dataInterpreter = DataInterpreter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
=======
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateProgress()
>>>>>>> 6fcd473c50b9b868f8d2f9ae560bebe0de7d7e50
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
<<<<<<< HEAD
   
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
=======


>>>>>>> 6fcd473c50b9b868f8d2f9ae560bebe0de7d7e50
}

