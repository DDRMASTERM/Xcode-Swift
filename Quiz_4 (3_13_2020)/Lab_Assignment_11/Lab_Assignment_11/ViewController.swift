//
//  ViewController.swift
//  Lab_Assignment_11
//
//  Created by J. Matthew Conover on 3/4/20.
//  Copyright © 2020 J. Matthew Conover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Die1: UIImageView!
    @IBOutlet weak var Die2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DiceRoller(_ sender: Any) {
        var number = Int.random(in: 1...6)
        Die1.image = UIImage(named: "face\(number)")
        number = Int.random(in: 1...6)
        Die2.image = UIImage(named: "face\(number)")
    }
    

}

