//
//  ViewController.swift
//  Tap Me Fast
//
//  Created by Benjamin Inemugha on 15/07/2020.
//  Copyright © 2020 Techelopers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var startGameButton: UIButton!
    
    var timer = Timer()
    var timerInt = 10
    var scoreInt = 0
    var gameInt = 0 
    
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startGameButtonWasPressed(_ sender: Any) {
        if timerInt == 10{
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(startCounter), userInfo: nil, repeats: true)
        }
    }
    
    @objc func startCounter(){
        timerInt -= 1
        timerLabel.text = String(timerInt)
        
        if timerInt == 0 {
            timer.invalidate()
        }
    }
}

