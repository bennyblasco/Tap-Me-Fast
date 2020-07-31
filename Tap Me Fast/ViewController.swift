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
                startGameButton.setTitle("Start", for: UIControl.State.normal)
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(startCounter), userInfo: nil, repeats: true)
            
            startGameButton.isEnabled = false
            startGameButton.alpha = 0.5
        }
        if timerInt == 0{
            
            scoreInt = 0
            timerInt = 10
            startGameButton.isEnabled = true
            startGameButton.alpha = 1
            startGameButton.setTitle("Restart", for: UIControl.State.normal)
            
            gameInt = 0
        }
        
        if gameInt == 1{
            scoreInt += 1
            scoreLabel.text = String(scoreInt)
            
        }
    }
    
    @objc func startCounter(){
        timerInt -= 1
        timerLabel.text = String(timerInt)
        
        gameInt = 1
        startGameButton.isEnabled = true
        startGameButton.alpha = 1
        
        if timerInt == 0 {
            timer.invalidate()
            startGameButton.isEnabled = false
            startGameButton.alpha = 0.5
            
        }
    }
    
    @objc func restart(){
        gameInt = 0
    }
}

