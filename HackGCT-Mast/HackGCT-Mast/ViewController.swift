//
//  ViewController.swift
//  HackGCT-Mast
//
//  Created by John on 8/8/15.
//  Copyright (c) 2015 hackgctmast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
<<<<<<< HEAD

    @IBOutlet weak var money_saved: UILabel!
    @IBOutlet var data_progress: UIView!
    @IBOutlet weak var progress: UIProgressView!
    var dataLimit = 4.0;
    var data = 0.0;
    @IBOutlet weak var data_label: UILabel!
    
    @IBAction func button(sender: AnyObject) {
        //progressLabel.text = "0%"
        data++;
        data_label.text = data.description + "/" + dataLimit.description;
        progress.setProgress((Float)(data/dataLimit), animated: true);
        if (data > dataLimit) {
            progress.progressTintColor = UIColor.redColor();
        }
    }
    
=======
    
    var dataInterpreter = DataInterpreter.sharedInstance
>>>>>>> origin/master
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
<<<<<<< HEAD
        progress.setProgress(0.0, animated: true);
=======
        println(dataInterpreter.getTotalDataUsage())
>>>>>>> origin/master
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

