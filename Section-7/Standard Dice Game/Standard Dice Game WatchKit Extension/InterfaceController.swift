//
//  InterfaceController.swift
//  Standard Dice Game WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/19/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var lblDiceType: WKInterfaceLabel!
    @IBOutlet var lblResult: WKInterfaceLabel!
    
    @IBOutlet var btnDiceSelect: WKInterfaceButton!
    
    var diceNumberArray = [2, 4, 6, 8, 10, 12, 20, 50, 100]
    var result : Int = 0
    var diceSelect : Int = 2
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    
    override func willActivate() {
        super.willActivate()
    }

    
    override func didDeactivate() {
        super.didDeactivate()
    }

    
    @IBAction func btnDiceSelectClick() {
        increaseDiceArrayNumber()
    }
    
    
    @IBAction func btnRollClick() {
        randomizeTheNumber()
    }
    
    func randomizeTheNumber() {
        result = Int(arc4random_uniform(UInt32(diceNumberArray[diceSelect])))
        
        if result == 0 {
            
            result = Int(arc4random_uniform(UInt32(diceNumberArray[diceSelect])))
            
            if result == 0 {
                result = 1
            }
        }
        
        printResult()
    }
    
    func increaseDiceArrayNumber()  {
        diceSelect += 1
        
        if diceSelect >= diceNumberArray.count {
            diceSelect = 0
        }
        
        printDice()
    }
    
    func printDice() {
        lblDiceType.setText("Dice: \(diceNumberArray[diceSelect])s")
        btnDiceSelect.setTitle("Dice: \(diceNumberArray[diceSelect])s")
    }
    
    func printResult() {
        lblResult.setText("Result: \(result)")
    }
}
