//
//  InterfaceController.swift
//  Flip a coin WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/15/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var btnFlip: WKInterfaceButton!
    
    var coinFlipHeads : Bool = true
    
    let coinHead : String = "1.png"
    
    let coinTail : String = "2.png"
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
    }

    
    override func willActivate() {
        super.willActivate()
    }

    
    override func didDeactivate() {
        super.didDeactivate()
    }
    

    @IBAction func btnFlipAction() {
        
        flipTheCoin()
        
    }
    
    
    func flipTheCoin() {
        
        btnFlip.setBackgroundImageNamed(coinFlipHeads == false ? coinHead : coinTail)
        
        coinFlipHeads = !coinFlipHeads
        
    }
}
