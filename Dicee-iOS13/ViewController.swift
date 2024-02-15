//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: IBOutlet(s)
    @IBOutlet weak var rollDiceButton: UIButton!
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!

    var diceImageArray: [UIImage] = []
    
    //MARK: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rollDiceButton.layer.cornerRadius = 5
        diceImageArray = [UIImage(imageLiteralResourceName: "DiceOne"),
                          UIImage(imageLiteralResourceName: "DiceTwo"),
                          UIImage(imageLiteralResourceName: "DiceThree"),
                          UIImage(imageLiteralResourceName: "DiceFour"),
                          UIImage(imageLiteralResourceName: "DiceFive"),
                          UIImage(imageLiteralResourceName: "DiceSix")]
        
        
        //diceImageViewOne.image=diceImageArray[Int.random(in:0...5)]
        //diceImageViewOne.image=diceImageArray.randomElement()
        diceImageViewOne.image = UIImage.init(imageLiteralResourceName: "DiceOne")
        diceImageViewTwo.image = UIImage.init(imageLiteralResourceName: "DiceOne")
        
    }

    //MARK: IBAction(s)
    @IBAction func rollDicePressed(_ sender: Any) {
        diceImageViewOne.image = diceImageArray[getRandomNum()]
        diceImageViewTwo.image = diceImageArray[getRandomNum()]
    }
    
    func getRandomNum() -> Int {
        return Int.random(in: 0...5)
    }
 
}

