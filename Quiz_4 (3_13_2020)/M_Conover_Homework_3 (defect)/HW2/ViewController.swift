//
//  ViewController.swift
//  HW2
//
//  Created by J. Matthew Conover on 3/2/20.
//  Copyright © 2020 J. Matthew Conover. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var N1: UITextField!
    @IBOutlet weak var N2: UITextField!
    @IBOutlet weak var Output: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Add(_ sender: UIButton) {
        var in1 = 0
        var in2 = 0
        if N1.text == nil {
            
        }
        else if let cn = Int(N1.text!) {
            in1 = cn
        }
        else{
            
        }
        if N2.text == nil {
            
        }
        else if let cn = Int(N2.text!) {
            in2 = cn
        }
        else{
            
        }
        Output.text=String(in1+in2)
        
    }
    @IBAction func Sub(_ sender: UIButton) {
        var in1 = 0
        var in2 = 0
        if N1.text == nil {
            
        }
        else if let cn = Int(N1.text!) {
            in1 = cn
        }
        else{
            
        }
        if N2.text == nil {
            
        }
        else if let cn = Int(N2.text!) {
            in2 = cn
        }
        else{
            
        }
        Output.text=String(in1-in2)
    }
    @IBAction func Mul(_ sender: UIButton) {
        var in1 = 0
        var in2 = 0
        if N1.text == nil {
            
        }
        else if let cn = Int(N1.text!) {
            in1 = cn
        }
        else{
            
        }
        if N2.text == nil {
            
        }
        else if let cn = Int(N2.text!) {
            in2 = cn
        }
        else{
            
        }
        Output.text=String(in1*in2)
    }
    @IBAction func Div(_ sender: UIButton) {
        var in1 = 0
        var in2 = 0
        if N1.text == nil {
            
        }
        else if let cn = Int(N1.text!) {
            in1 = cn
        }
        else{
            
        }
        if N2.text == nil {
            
        }
        else if let cn = Int(N2.text!) {
            in2 = cn
        }
        else{
            
        }
        Output.text=String(in1/in2)
    }
    
    
}

