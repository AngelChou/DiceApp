//
//  ViewController.swift
//  Dice App
//
//  Created by Shun-Ching, Chou on 2017/4/16.
//  Copyright © 2017年 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        changeDicFace()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Roll Button Methods

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("roll button was pressed")
        changeDicFace()
    }
    
    func changeDicFace(){
        let firstRandomIndex = Int(arc4random_uniform(6))
        let secondRandomIndex = Int(arc4random_uniform(6))

        diceImageView1.image = UIImage(named: diceArray[firstRandomIndex])
        diceImageView2.image = UIImage(named: diceArray[secondRandomIndex])
    }
    
    //TODO: Add Shake Gesture Handling
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDicFace()
    }
    
}

