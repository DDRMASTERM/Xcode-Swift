//
//  ViewController.swift
//  Storyboard_3_6
//
//  Created by J. Matthew Conover on 3/6/20.
//  Copyright © 2020 J. Matthew Conover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var lablePlz: UILabel!
    @IBOutlet weak var tb1: UITextField!
    @IBOutlet weak var b1: UIButton!
    var counter=0
    @IBAction func clicked(_ sender: Any) {
        counter+=1
        b1.setTitle("Click Count: \(counter)", for: .normal)
        lablePlz.text=tb1.text
        b1.backgroundColor = UIColor.gray
        b1.setTitleColor(UIColor.red, for: .normal)
    }
    

}

