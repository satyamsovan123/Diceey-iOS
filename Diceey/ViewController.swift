//
//  ViewController.swift
//  Diceey
//
//  Created by Satyam Sovan Mishra on 03/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Generating IBOutlets for changing properties of the selected UI Elements
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    @IBOutlet weak var winnerStatement: UILabel!
    @IBOutlet weak var demoDice: UIImageView!
    @IBOutlet weak var rollButtonOutlet: UIButton!
    
    // Defining what happens on pressing the roll button
    // Generating IBAction for the roll button to further define the function
    @IBAction func rollButton(_ sender: UIButton) {
        // This part tries to make a pseudo splash screen
        // Redacted, for better UX
        
        // Creating array of Image Literals and choosing a random image
        let dices = [#imageLiteral(resourceName: "die1"), #imageLiteral(resourceName: "die2"), #imageLiteral(resourceName: "die3"), #imageLiteral(resourceName: "die4"), #imageLiteral(resourceName: "die5"), #imageLiteral(resourceName: "die6")]
        let firstNum = Int.random(in: 0 ... 5)
        let secondNum = Int.random(in: 0 ... 5)
        leftDice.image = dices[firstNum]
        rightDice.image = dices[secondNum]
        
        // Comparing the random numbers generated and changing the result statement accordingly
        if firstNum > secondNum {
            winnerStatement.text = "Player 1 Wins"
        } else if firstNum < secondNum {
            winnerStatement.text = "Player 2 Wins"
        } else {
            winnerStatement.text = "Draw 🏳️"
        }
    }
    
}

