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
    var arrayCheese =   ["Chedder", "Mozzarella", "Brie", "White Chedder", "Swiss"]
    var arrayTops =     ["Onions", "Tomato", "Lettuce", "Pickles", "Olives"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func btnCreateClick() {
        
    }
}
