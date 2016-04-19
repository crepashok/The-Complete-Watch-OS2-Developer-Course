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
