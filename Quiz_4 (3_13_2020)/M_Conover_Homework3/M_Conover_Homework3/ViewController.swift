//
//  ViewController.swift
//  M_Conover_Homework3
//
//  Created by J. Matthew Conover on 3/5/20.
//  Copyright © 2020 J. Matthew Conover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Output: UILabel!
    @IBOutlet weak var N1: UITextField!
    @IBOutlet weak var N2: UITextField!
    
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
    @IBAction func Sub(_ sender: Any) {
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
    @IBAction func Mult(_ sender: Any) {
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
    @IBAction func Div(_ sender: Any) {
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
        let out = Double(in1)/Double(in2)
        if(out.truncatingRemainder(dividingBy: 1) == 0.0 ) {
            Output.text=String(Int(out))
        }
        else {
            Output.text=String(out)
        }
    }
    
    
    

}

