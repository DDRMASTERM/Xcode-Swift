//
//  ViewController.swift
//  Storyboard_3_4
//
//  Created by J. Matthew Conover on 3/4/20.
//  Copyright © 2020 J. Matthew Conover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var cardImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Button(_ sender: Any) {
        var number = Int.random(in:1...4)
        cardImage.image = UIImage(named: "c\(number)")
    }
}

