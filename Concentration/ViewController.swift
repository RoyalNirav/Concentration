//
//  ViewController.swift
//  Concentration
//
//  Created by Nirav Patel on 5/3/18.
//  Copyright © 2018 Nirav Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"

        }
    }
    
    var emojiChocies = ["👻", "🧛🏼‍♂️", "🧟‍♂️", "👹", "😈", "👺", "🤡", "💩", "🧞‍♀️", "🐙", "🍏", "🍠"]
    

    @IBAction func touchCard(_ sender: UIButton){
        flipCount += 1
        
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChocies[cardNumber], on: sender)
            print("cardNumber = \(cardNumber)")
        } else {
            print("Chosen card was not in cardButtons")
        }
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5001563683, blue: 0.00014873206, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    

}

 
