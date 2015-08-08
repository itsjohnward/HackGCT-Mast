//
//  DataIntrepreter.swift
//  HackGCT-Mast
//
//  Created by Zachary Espiritu on 8/8/15.
//  Copyright (c) 2015 hackgctmast. All rights reserved.
//

import Foundation

class DataInterpreter {
    
    // MARK: Real Stuff
    
    var uploadedDataByWifi: Int?
    var downloadedDataByWifi: Int?
    var uploadedDataByCellular: Int?
    var downloadedDataByCellular: Int?
    
    init() {
        var dataMonitor: DataMonitor = DataMonitor()
        var dataArray = dataMonitor.getDataCounters()
        println(dataArray)
        
        uploadedDataByWifi = dataArray[0] as? Int
        downloadedDataByWifi = dataArray[1] as? Int
        uploadedDataByCellular = dataArray[2] as? Int
        downloadedDataByCellular = dataArray[3] as? Int
        
        println("Uploaded Data By Wifi: \(uploadedDataByWifi)")
        println("Downloaded Data By Wifi: \(downloadedDataByWifi)")
        println("Uploaded Data By Cellular: \(uploadedDataByCellular)")
        println("Downloaded Data By Ceullular: \(downloadedDataByCellular)")
    }

    func getTotalDataUsage() -> Double {
        
        var cellularDataUsage: Double = (Double(uploadedDataByCellular!) / Double(1048576)) + (Double(downloadedDataByCellular!) / Double(1048576))
        
        return cellularDataUsage
        
    }
    
}