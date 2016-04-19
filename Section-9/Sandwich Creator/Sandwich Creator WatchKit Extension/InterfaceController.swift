//
//  InterfaceController.swift
//  Sandwich Creator WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/19/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var lblBread: WKInterfaceLabel!
    @IBOutlet var lblMeat: WKInterfaceLabel!
    @IBOutlet var lblCheese: WKInterfaceLabel!
    @IBOutlet var lblTops: WKInterfaceLabel!
    
    @IBOutlet var btnCreate: WKInterfaceButton!
    
    var arrayBread =    ["White", "Wheat", "Grain", "Gluten-Free", "Flax"]
    var arrayMeat =     ["Ham", "Turkey", "Salami", "Cold Cut", "Chicken"]
    var arrayCheese =   ["Chedder", "Mozzarella", "Brie", "Havarti", "Swiss"]
    var arrayTops =     ["Onions", "Tomato", "Lettuce", "Pickles", "Olives"]
    
    var numberBread : Int = 0
    var numberMeat : Int = 0
    var numberCheese : Int = 0
    var numberTops : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        randomiseNumbers()
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func btnCreateClick() {
        randomiseNumbers()
    }
    
    func randomiseNumbers() {
        numberBread = Int(arc4random_uniform(UInt32(arrayBread.count)))
        numberMeat = Int(arc4random_uniform(UInt32(arrayMeat.count)))
        numberCheese = Int(arc4random_uniform(UInt32(arrayCheese.count)))
        numberTops = Int(arc4random_uniform(UInt32(arrayTops.count)))
        
        printSandwich()
    }
    
    func printSandwich() {
        lblBread.setText("Bread: \(arrayBread[numberBread])")
        lblMeat.setText("Meat: \(arrayBread[numberMeat])")
        lblCheese.setText("Cheese: \(arrayBread[numberCheese])")
        lblTops.setText("Tops: \(arrayBread[numberTops])")
    }
}
