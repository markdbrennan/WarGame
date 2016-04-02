//
//  ViewController.swift
//  War
//
//  Created by Mark Brennan on 12/03/2016.
//  Copyright © 2016 Mark Brennan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var enemyScoreLabel: UILabel!
    
    var playerScore:Int = 0
    var enemyScore:Int = 0
    
    var cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        //Randomise a number for the first image view
        let firstRandomNum:Int = Int(arc4random_uniform(13))
        
        //Construct a string with the random number
        let firstCardString:String = self.cardNamesArray[firstRandomNum]
        
        //Set the image view to the string
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        //Same again for second card
        let secondRandomNum:Int = Int(arc4random_uniform(13))
        let secondCardString:String = self.cardNamesArray[secondRandomNum]
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        //Determine the higher card using a conditional statement
        if firstRandomNum > secondRandomNum {
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
        } else if firstRandomNum == secondRandomNum {
            //TODO - both numbers are equal
        } else {
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
    }
}