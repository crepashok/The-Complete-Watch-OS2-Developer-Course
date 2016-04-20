//
//  InterfaceController.swift
//  Roman Numeral WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/20/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var lblRomanNumber: WKInterfaceLabel!
    @IBOutlet var lblCorrect: WKInterfaceLabel!
    @IBOutlet var btnAnswer0: WKInterfaceButton!
    @IBOutlet var btnAnswer1: WKInterfaceButton!
    
    var buttonCorrect : Int = 0
    var totalCorrect : Int = 0
    var romanNumeralArray = ["I", "V", "X", "L", "C", "D", "M"]
    var randomArrayNumber : Int = 0
    var correctAnswerArray = ["1", "5", "10", "15", "100", "500", "1000"]
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        reset()
    }

    
    override func willActivate() {
        super.willActivate()
    }

    
    override func didDeactivate() {
        super.didDeactivate()
    }
    

    @IBAction func btnAnswer0Action() {
        button0Correct()
    }
    
    
    @IBAction func btnAnswer1Action() {
        button1Correct()
    }
    
    func randomizeNumbers() {
        randomArrayNumber = Int(arc4random_uniform(UInt32(romanNumeralArray.count)))
        buttonCorrect = Int(arc4random_uniform(2))
        printRomanNumeral()
        printButtons()
    }
    
    func printRomanNumeral() {
        lblRomanNumber.setText("\(romanNumeralArray[randomArrayNumber])")
    }
    
    func printButtons() {
        
        var incorrectAnswer : Int = randomArrayNumber
        
        if buttonCorrect == 0 {
            btnAnswer0.setTitle("\(correctAnswerArray[randomArrayNumber])")
            
            if randomArrayNumber == correctAnswerArray.count {
                incorrectAnswer = 0
            }
            
            btnAnswer1.setTitle("\(correctAnswerArray[(incorrectAnswer + 1)])")
        }
        
        if buttonCorrect == 1 {
            btnAnswer1.setTitle("\(correctAnswerArray[randomArrayNumber])")
            
            if randomArrayNumber == correctAnswerArray.count {
                incorrectAnswer = 0
            }
            
            btnAnswer0.setTitle("\(correctAnswerArray[(incorrectAnswer + 1)])")
        }
        addScore()
    }
    
    func addScore() {
        totalCorrect += 1
        printScore()
    }
    
    func printScore() {
        lblCorrect.setText("Correct: \(totalCorrect)")
    }
    
    func button0Correct() {
        if buttonCorrect == 0 {
            addScore()
        }
        if buttonCorrect == 1 {
            reset()
        }
    }
    
    func button1Correct() {
        if buttonCorrect == 1 {
            addScore()
        }
        if buttonCorrect == 0 {
            reset()
        }
    }
    
    func reset() {
        randomizeNumbers()
    }
    
}
