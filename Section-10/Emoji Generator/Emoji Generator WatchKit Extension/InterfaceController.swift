//
//  InterfaceController.swift
//  Emoji Generator WatchKit Extension
//
//  Created by Pavlo Cretsu on 4/19/16.
//  Copyright © 2016 Pasha Cretsu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var lblEmojiDisplay: WKInterfaceLabel!
    @IBOutlet var btnGenerate: WKInterfaceButton!
    
    var emojiArray = ["🐝", "🐏", "🐅", "🕊", "🐌", "🐜", "🐳", "🐊", "🐢", "🐖", "🐿", "🐇", "🐈", "🐩", "🐪", "🐘", "🐎", "🐑", "🕷", "🦀"]
    
    var buttonArray = ["Generate", "Another", "Emoji Time", "Yay! Another!", "More...Emojis"]
    
    var numberEmoji : Int = 0
    
    var numberButton : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        randomizeTheNumbers()
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    
    @IBAction func btnGenerateClick() {
        randomizeTheNumbers()
    }
    
    func randomizeTheNumbers() {
        numberEmoji = Int(arc4random_uniform(UInt32(emojiArray.count)))
        numberButton = Int(arc4random_uniform(UInt32(buttonArray.count)))
        
        printEmoji()
        printButton()
    }
    
    func printEmoji() {
        lblEmojiDisplay.setText("\(emojiArray[numberEmoji])")
    }
    
    func printButton() {
        btnGenerate.setTitle("\(buttonArray[numberButton])")
    }

}
