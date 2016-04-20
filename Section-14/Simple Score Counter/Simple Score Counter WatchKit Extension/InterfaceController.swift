//
//  InterfaceController.swift
//  Simple Score Counter WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/20/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var btnScore0: WKInterfaceButton!
    @IBOutlet var btnScore1: WKInterfaceButton!
    
    var score0 : Int = 0
    var score1 : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func btnScore0Action() {
        addScore0()
    }
    
    @IBAction func btnScore1Action() {
        addScore1()
    }
    
    @IBAction func btnResetAction() {
        
    }
    
    func addScore0() {
        score0 += 1
        printScrore0()
    }
    
    func printScrore0() {
        btnScore0.setTitle("\(score0)")
    }
    
    func addScore1() {
        score1 += 1
        printScrore1()
    }
    
    func printScrore1() {
        btnScore1.setTitle("\(score1)")
    }
    
}
