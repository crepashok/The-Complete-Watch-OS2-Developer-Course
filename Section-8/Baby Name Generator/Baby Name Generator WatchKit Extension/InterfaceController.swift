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
    
    var isGirl : Bool = true
    var randomIndex : Int = 0
    
    var colorGirl = UIColor.redColor()
    var colorBoy = UIColor.blueColor()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        chooseName()
    }
    

    override func willActivate() {
        super.willActivate()
    }
    

    override func didDeactivate() {
        super.didDeactivate()
    }
    

    @IBAction func btnAnotherNameClick() {
        chooseName()
    }
    
    
    @IBAction func btnGirlOrBoyClick() {
        chooseGirlOrBoy()
    }
    
    
    func chooseGirlOrBoy() {
        
        let newName : String = isGirl == true ? "Boy" : "Girl"
        
        btnBoyOrGirl.setTitle(newName)
        
        isGirl = !isGirl
        
        chooseName()
    }
    
    
    func chooseName() {
        
        var newName : String = ""
        
        if isGirl == false {
            
            randomIndex = Int(arc4random_uniform(UInt32(nameBoyArray.count - 1)))
            newName = nameBoyArray[randomIndex]
        
        } else {
            
            randomIndex = Int(arc4random_uniform(UInt32(nameGirlArray.count - 1)))
            newName = nameGirlArray[randomIndex]
            
        }
        
        let newColor = (isGirl == false) ? colorBoy : colorGirl
        
        let attString = NSMutableAttributedString(string: newName)
        
        attString.setAttributes([NSForegroundColorAttributeName: newColor], range: NSMakeRange(0, newName.characters.count))
        
        lblName.setAttributedText(attString)
        
    }
    
}
