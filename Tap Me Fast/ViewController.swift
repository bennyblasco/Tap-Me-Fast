//
//  ViewController.swift
//  Tap Me Fast
//
//  Created by Benjamin Inemugha on 15/07/2020.
//  Copyright © 2020 Techelopers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        textLabel.text = "Tap me fast"
    }
    
}

