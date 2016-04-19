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
