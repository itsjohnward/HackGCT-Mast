//
//  Bites.swift
//  HackGCT-Mast
//
//  Created by nico cobb on 8/8/15.
//  Copyright (c) 2015 hackgctmast. All rights reserved.
//

import Foundation

class Bites {
    
    // MARK: Singleton
    
    class var sharedInstance : DataInterpreter {
        struct Static {
            static let instance : DataInterpreter = DataInterpreter()
        }
        return Static.instance
    }
    
    // MARK: Real Stuff
    
    //    var monthlyDataPlanMB: Int = 4 * 1024
    //    var maxPerDay: Double = 0
    //    var maxThisDay: Double = 0
    //    var carryOver: Double = 0
    var monthlyDataPlanMB: Int = NSUserDefaults.standardUserDefaults().integerForKey("monthlyDataPlanMB") {
        didSet {
            NSUserDefaults.standardUserDefaults().setInteger(monthlyDataPlanMB, forKey:"monthlyDataPlanMB")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    var maxPerDay: Int = NSUserDefaults.standardUserDefaults().integerForKey("maxPerDay") {
        didSet {
            NSUserDefaults.standardUserDefaults().setInteger(maxPerDay, forKey:"maxPerDay")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    var maxThisDay: Int = NSUserDefaults.standardUserDefaults().integerForKey("maxThisDay") {
        didSet {
            NSUserDefaults.standardUserDefaults().setInteger(maxThisDay, forKey:"maxThisDay")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    var carryOver: Int = NSUserDefaults.standardUserDefaults().integerForKey("carryOver") {
        didSet {
            NSUserDefaults.standardUserDefaults().setInteger(carryOver, forKey:"carryOver")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    var previousFeedingBites: Int = NSUserDefaults.standardUserDefaults().integerForKey("previousFeedingBites") {
        didSet {
            NSUserDefaults.standardUserDefaults().setInteger(previousFeedingBites, forKey:"previousFeedingBites")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    var currentFeedingBites: Int = NSUserDefaults.standardUserDefaults().integerForKey("currentFeedingBites") {
        didSet {
            NSUserDefaults.standardUserDefaults().setInteger(currentFeedingBites, forKey:"currentFeedingBites")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    var dataChecker: DataInterpreter = DataInterpreter()
    var date = NSDate()
    var calendar = NSCalendar.currentCalendar()
//    var compontents = NSCalendar.currentCalendar().components(<#unitFlags: NSCalendarUnit#>, fromDate: <#NSDate#>)
    
    func assignMonthlyDataGB(data: Int) {
        monthlyDataPlanMB = data * 1024
//        maxPerDay = monthlyDataPlanMB / date.description
    }
    
    func endOfDayUpdate() {
        
    }
    
    func beginningOfDayReset() {
        
    }
    
    func generalUpdate() {
        dataChecker.getTotalDataUsage()
    }
    
    func spend() -> Int {
        
        return currentFeedingBites
    }
}