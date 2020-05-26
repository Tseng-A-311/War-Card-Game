//
//  ViewController.swift
//  WarCardGame
//
//  Created by Ann Tseng on 2020-05-25.
//  Copyright © 2020 Ann Tseng. All rights reserved.
//

import UIKit

// the ": UIViewController" during the declaration of the class "ViewController" is what is known as "subclassing". "Subclassing" is a way for classes to build off of eachother so that you don't always have to declare classes from scratch. This is saying that the "ViewController" is building off of another class called the "UIViewController". The "UIViewController" is a class from the UIKit.
class ViewController: UIViewController {
    
    //IBOutlet object, left imageview (left card)
    @IBOutlet weak var leftImageView: UIImageView!
    
    //IBOutlet object, right imageview (left card)
    @IBOutlet weak var rightImageView: UIImageView!
    
    //IBOutlet object, left score (left (player's) score)
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    //IBOutlet object, right score (right (CPU's) card)
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    //left and right score variables
    var leftScore = 0
    var rightScore = 0
    
    //load app
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //when sender taps the deal button...
    @IBAction func dealTapped(_ sender: Any) {
        
        //randomize left/right card numbers (between 2 and 14)
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //changes card image on sender's click
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //changing the scores
        if leftNumber > rightNumber {
            //left side, player, wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else if leftNumber < rightNumber {
            //right side, CPU, wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
    

}


