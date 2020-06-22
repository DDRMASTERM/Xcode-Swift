//
//  ViewController.swift
//  HW2
//
//  Created by J. Matthew Conover on 3/2/20.
//  Copyright © 2020 J. Matthew Conover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var TheLabel: UILabel!
    
    @IBAction func TheField(_ sender: Any) {
        var i1 = 0
    }
    
    @IBAction func Button(_ sender: Any) {
        TheLabel.text = "Button was clicked!"
    }
    
    
}

