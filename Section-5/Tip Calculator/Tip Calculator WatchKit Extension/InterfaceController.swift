//
//  InterfaceController.swift
//  Tip Calculator WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/17/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var lblTip: WKInterfaceLabel!
    @IBOutlet var lblTotal: WKInterfaceLabel!
    
    @IBOutlet var btnMealTotal: WKInterfaceButton!
    @IBOutlet var btnTipTotal: WKInterfaceButton!
    
    var mealTotal : Double = 0
    var tipTotal : Double = 0
    
    var mealCostArray = [10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 80.0, 100.0, 150.0, 180.0, 200.0]
    
    var tipArray = [0.1, 0.15, 0.2, 0.25, 0.3]
    
    var buttonMealNumber : Int = 0
    
    var buttonTiplNumber : Int = 0
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func mealTotalClick() {
        buttonNumberMealTotal()
        calculateTotal()
    }
    
    @IBAction func tipTotalClick() {
        buttonNumberTipTotal()
        calculateTotal()
    }
    
    func buttonNumberMealTotal() {
        buttonMealNumber += 1
        
        if buttonMealNumber == (mealCostArray.count - 1) {
        
            buttonMealNumber = 0
            
        }
        printButtons()
    }
    
    func printButtons() {
        btnMealTotal.setTitle("Meal Total: $\(mealCostArray[buttonMealNumber])")
        btnTipTotal.setTitle("Tip Total: \(tipArray[buttonTiplNumber] * 100)%")
    }
    
    func buttonNumberTipTotal() {
        buttonTiplNumber += 1
        
        if buttonTiplNumber == (tipArray.count - 1) {
            
            buttonTiplNumber = 0
            
        }
        printButtons()
    }
    
    func calculateTotal() {
        tipTotal = mealCostArray[buttonMealNumber] * tipArray[buttonTiplNumber]
        mealTotal = tipTotal + mealCostArray[buttonMealNumber]
        
        printTip()
    }
    
    func printTip() {
        
        lblTip.setText("Tip: $\(lblTotal)")
        lblTotal.setText("Total: $\(mealTotal)")
        
    }
}
