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
    
    func pullData() {
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
    
    init() {
        pullData()
    }
    
    func getTotalDataUsage() -> Double {
        pullData()
        var cellularDataUsage: Double = (Double(uploadedDataByWifi!) / Double(1073741824)) + (Double(downloadedDataByWifi!) / Double(1073741824))
        println(cellularDataUsage);
        
        return cellularDataUsage
        
    }
    
}