//
//  InterfaceController.swift
//  PushUp Counter WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/19/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var btnReps: WKInterfaceButton!
    @IBOutlet var btnMax: WKInterfaceButton!
    
    var reps : Int = 0
    var maxArray = [5, 8, 10, 12, 15, 20, 30]
    var arrayNumber : Int = 3

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func btnRepsClick() {
        addReps()
    }
    
    @IBAction func btnMaxClick() {
        setMaxReps()
    }
    
    func addReps() {
    
        reps += 1
        
        if reps > maxArray[arrayNumber] {
        
            reps = 0
            
        }
        
        printButtonNumber()
    }
    
    func printButtonNumber() {
        btnReps.setTitle("\(reps)")
    }
    
    func setMaxReps() {
    
        arrayNumber += 1
        
        if arrayNumber >= maxArray.count {
        
            arrayNumber = 0
            
        }
        
        printMaxButton()
    }
    
    func printMaxButton() {
        btnMax.setTitle("Max: \(maxArray[arrayNumber])")
        
        reps = 0
        
        printButtonNumber()
    }
}
