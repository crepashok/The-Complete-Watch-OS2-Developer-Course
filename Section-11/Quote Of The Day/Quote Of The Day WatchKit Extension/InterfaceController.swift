//
//  InterfaceController.swift
//  Quote Of The Day WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/19/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var lblQuote: WKInterfaceLabel!
    @IBOutlet var btnQuote: WKInterfaceButton!
    
    var quoteArray = [
        "Whatever you are, be a good one.",
        "If you dream it, you can do it.",
        "Never, never, never give up.",
        "Don’t wait. The time will never be just right.",
        "If not us, who? If not now, when?",
        "Everything you can imagine is real.",
        "I can, therefore I am.",
        "Remember no one can make you feel inferior without your consent.",
        "Turn your wounds into wisdom.",
        "Wherever you go, go with all your heart.",
        "Do what you can, with what you have, where you are.",
        "Hope is a waking dream.",
        "Action is the foundational key to all success.",
        "Do one thing every day that scares you.",
        "You must do the thing you think you cannot do.",
        "Life is trying things to see if they work.",
        "Don’t regret the past, just learn from it.",
        "Believe you can and you’re halfway there.",
        "Live what you love.",
        "The power of imagination makes us infinite.",
        "May you live every day of your life.",
        "Eighty percent of success is showing up.",
        "To be the best, you must be able to handle the worst.",
        "A jug fills drop by drop.",
        "The obstacle is the path.",
        "The best revenge is massive success.",
        "The best way out is always through.",
        "If you have never failed you have never lived.",
        "Hope is the heartbeat of the soul.",
        "Ever tried. Ever failed. No matter. Try Again. Fail again. Fail better.",
        "All you need is love.",
        "It does not matter how slowly you go as long as you do not stop.",
        "It is never too late to be what you might have been.",
        "We become what we think about.",
        "An obstacle is often a stepping stone.",
        "Dream big and dare to fail.",
        "Men are born to succeed, not fail."]
    
    var numberQuote : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        randomizeTheQuoteIndex()
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func btnQuoteClick() {
        randomizeTheQuoteIndex()
    }
    
    func randomizeTheQuoteIndex() {
        numberQuote = Int(arc4random_uniform(UInt32(quoteArray.count)))
        
        displayRandomQuote()
    }
    
    func displayRandomQuote() {
        changeTextColor()
        lblQuote.setText("\(quoteArray[numberQuote])")
    }
    
    func changeTextColor() {
        let whiteIndex : Float = Float((arc4random_uniform(80) % 50) + 50) / 100.0
        lblQuote.setTextColor(UIColor.init(white: CGFloat(whiteIndex), alpha: 1.0))
    }
}
