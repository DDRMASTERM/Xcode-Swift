//
//  ViewController.swift
//  Alerts!_3_9
//
//  Created by J. Matthew Conover on 3/9/20.
//  Copyright © 2020 J. Matthew Conover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func displayAlert(_ sender: Any) {
        let alert = UIAlertController(title: "mental alertness!", message: "do you want to change the label's text", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {(action: UIAlertAction! ) in self.myLabel.text = "Bananas"}))
        alert.addAction(UIAlertAction(title: "No", style: .default))
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel))
        
        self.present(alert, animated: true)
    }
    
    

}
