//
//  InterfaceController.swift
//  Timers WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/17/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tmrTimer: WKInterfaceTimer!
    @IBOutlet var btnStartStop: WKInterfaceButton!
    
    var isStart : Bool = false
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    
    @IBAction func btnStartStopClick() {
        startTimerLogic()
    }
    
    
    @IBAction func btnResetClick() {
        resetLogic()
    }
    
    func startTimerLogic() {
    
        if isStart == false {
            
            tmrTimer.setDate(NSDate())
            
            tmrTimer.start()
            
            btnStartStop.setTitle("Stop")
            
        } else {
            
            tmrTimer.stop()
            
            btnStartStop.setTitle("Start")
            
        }
        
        isStart = !isStart
        
    }
    
    func resetLogic() {
        tmrTimer.stop()
        btnStartStop.setTitle("Start")
        isStart = false
        tmrTimer.setDate(NSDate())
    }

}
