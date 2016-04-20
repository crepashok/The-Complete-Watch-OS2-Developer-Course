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
    var colorChange : Int = 0
    
    
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
        
        var incorrectAnswer : Int = 0
        
        incorrectAnswer = randomArrayNumber
        
        if buttonCorrect == 0 {
            btnAnswer0.setTitle("\(correctAnswerArray[randomArrayNumber])")
            
            if randomArrayNumber == (romanNumeralArray.count - 1) {
                incorrectAnswer = 0
            }
            
            btnAnswer1.setTitle("\(correctAnswerArray[(incorrectAnswer + 1)])")
        }
        
        if buttonCorrect == 1 {
            btnAnswer1.setTitle("\(correctAnswerArray[randomArrayNumber])")
            
            if randomArrayNumber == (romanNumeralArray.count - 1) {
                incorrectAnswer = 0
            }
            
            btnAnswer0.setTitle("\(correctAnswerArray[(incorrectAnswer + 1)])")
        }
        //addScore()
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
        reset()
    }
    
    func button1Correct() {
        if buttonCorrect == 1 {
            addScore()
        }
        reset()
    }
    
    func reset() {
        randomizeNumbers()
        changeTheColorOfRomanNumeral()
    }
    
    func changeTheColorOfRomanNumeral() {
        
        var labelsColor = UIColor.lightGrayColor()
        
        if colorChange == 0 {
            labelsColor = UIColor.whiteColor()
        } else if colorChange == 1 {
            labelsColor = UIColor.orangeColor()
        } else if colorChange == 2 {
            labelsColor = UIColor.purpleColor()
        } else if colorChange == 3 {
            labelsColor = UIColor.greenColor()
        } else if colorChange == 4 {
            labelsColor = UIColor.redColor()
        } else if colorChange == 5 {
            labelsColor = UIColor.blueColor()
        } else if colorChange == 6 {
            labelsColor = UIColor.magentaColor()
        }
        
        lblRomanNumber.setTextColor(labelsColor)
        lblCorrect.setTextColor(labelsColor)
        
        colorChange += 1
        
        if colorChange > 6 {
            colorChange = 0
        }
        
    }
    
}
