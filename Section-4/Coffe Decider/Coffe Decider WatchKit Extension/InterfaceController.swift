//
//  InterfaceController.swift
//  Coffe Decider WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/17/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var lblCoffee: WKInterfaceLabel!
    
    @IBOutlet var btnChoiceCoffee: WKInterfaceButton!
    
    var coffeeArray = ["Coffee", "Ice Coffee", "Americano", "Ice Americano", "Latte", "Cappucino", "Espresso", "Espresso Machiato", "Espresso Con Pana", "Ice Late", "Coffee Milkshake"]
    
    var buttonArray = ["Chooise Coffee", "Another", "Try again"]
    
    var coffeeArrayMAX : Int = 0
    
    var buttonArrayMAX : Int = 0
    
    var coffeeArrayRandom : Int = 0
    
    var buttonArrayRandom : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        findMaxItemsInArray()
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    
    @IBAction func btnChoiseCoffeClick() {
        randomizeTheNumbers()
    }
    
    func findMaxItemsInArray() {
        coffeeArrayMAX = coffeeArray.count - 1
        buttonArrayMAX = buttonArray.count - 1
    }
    
    func randomizeTheNumbers() {
        coffeeArrayRandom = Int(arc4random_uniform(UInt32(coffeeArrayMAX)))
        buttonArrayRandom = Int(arc4random_uniform(UInt32(buttonArrayMAX)))
        
        printCoffee()
        printButton()
    }
    
    func printCoffee() {
        lblCoffee.setText("\(coffeeArray[coffeeArrayRandom])")
    }
    
    func printButton() {
        btnChoiceCoffee.setTitle("\(buttonArray[buttonArrayRandom])")
    }
}
