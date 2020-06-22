//
//  ViewController.swift
//  M_Conover_Quiz_4
//
//  Created by J. Matthew Conover on 3/11/20.
//  Copyright © 2020 J. Matthew Conover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var random = 0
    var guesses = 20
    var over = false
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var relation: UILabel!
    @IBOutlet weak var guessesLeft: UILabel!
    @IBOutlet weak var guessField: UITextField!
    @IBOutlet weak var guessButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        random = Int.random(in: 0...100)
    }
    func reset() {
        relation.text = "Welcome to the game"
        guessesLeft.text = "Try to guess the number in less than 20 tries"
        guessButton.setTitle("Guess!", for: .normal)
        random = Int.random(in: 0...100)
        guesses = 20
        over = false
    }
    @IBAction func guess(_ sender: Any) {
        var message = "you need to enter an integer"
        
        let alert = UIAlertController(title: "Warning!", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        if !over {
            if guessField.text == nil{
                self.present(alert, animated: true)
            }
            else if let cn = Int(guessField.text!) {
                guesses-=1
                 guessesLeft.text = "Remaining guesses: \(guesses)"
                if cn > random{
                    relation.text = "You are above the number!"
                }
                else if cn < random{
                    relation.text = "You are below the number!"
                }
                else {
                    over = true
                    message = "You guessed it: \(random)\n Reset Game?"
                    relation.text = message
                    let success = UIAlertController(title: "Congrats!!!", message: message, preferredStyle: .alert)
                    success.addAction(UIAlertAction(title: "NO", style: .cancel))
                    success.addAction(UIAlertAction(title: "Yes", style: .default, handler: {(action: UIAlertAction! ) in self.reset()}))
                    self.present(success, animated: true)
                }
                if guesses == 0 {
                    over = true
                    relation.text = "You ran out of trials"
                    message = """
                    \(relation.text!).
                    The number was: \(random)
                    Reset Game?
                    """
                    let failure = UIAlertController(title: "Sorry!!!", message: message, preferredStyle: .alert)
                    failure.addAction(UIAlertAction(title: "NO", style: .cancel))
                    failure.addAction(UIAlertAction(title: "Yes", style: .default, handler: {(action: UIAlertAction! ) in self.reset()}))
                    self.present(failure, animated: true)
                }
                if over{
                    guessButton.setTitle("Reset?", for: .normal)
                }
            }
            else {
                self.present(alert, animated: true)
            }
        }
        else{
            reset()
        }
    }
    
   
    

}

