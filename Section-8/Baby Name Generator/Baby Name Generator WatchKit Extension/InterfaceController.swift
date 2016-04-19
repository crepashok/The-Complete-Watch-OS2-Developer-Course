//
//  InterfaceController.swift
//  Baby Name Generator WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/19/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet var lblName: WKInterfaceLabel!
    @IBOutlet var btnBoyOrGirl: WKInterfaceButton!
    
    var nameBoyArray = ["John", "Blake", "Roy", "Pasha", "Michael", "Vova", "Vasya", "Serhiy", "Slavik", "Vadim", "Bohdan", "Sasha", "Yulik", "Dyma", "Vladyk", "Mark", "Stive", "Daniel"]
    var nameGirlArray = ["Jane", "Joy", "Michelle", "Ashley", "Nataly", "Vika", "Nastya", "Iryna", "Olha", "Viorica", "Ljudmila", "Liana", "Joanne", "Katya", "Sveta", "Ljuda", "Sofia", "Yana"]
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }
    

    override func willActivate() {
        super.willActivate()
    }
    

    override func didDeactivate() {
        super.didDeactivate()
    }
    

    @IBAction func btnAnotherNameClick() {
        
    }
    
    
    @IBAction func btnGirlOrBoyClick() {
        
    }
    
}
