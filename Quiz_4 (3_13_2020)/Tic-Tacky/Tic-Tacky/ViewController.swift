//
//  ViewController.swift
//  Tic-Tacky
//
//  Created by J. Matthew Conover on 3/6/20.
//  Copyright © 2020 J. Matthew Conover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var turn = false
    var turnCount = 0
    var over = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var PrevWinner: UILabel!
    @IBOutlet weak var PlayerTurn: UILabel!
    func CurrentTurn() -> Bool{
        if (turn == true) {
            turn = false
            PlayerTurn.text="O"
        }
        else {
            turn = true
            PlayerTurn.text="X"
        }
        turnCount+=1
        return turn
    }
    func alreadyTaken(){
        let alert = UIAlertController(title: "Alert!", message: "This one was already chosen.", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        let alert2 = UIAlertController(title: "Alert!", message: "A new game has not started.", preferredStyle: .actionSheet)
        alert2.addAction(UIAlertAction(title: "OK", style: .default))
        if !over {
            self.present(alert, animated: true)
        }
        else {
            self.present(alert2, animated: true)
        }
    }
    func reset() {
        b1.setTitle("1", for: .normal)
        b2.setTitle("2", for: .normal)
        b3.setTitle("3", for: .normal)
        b4.setTitle("4", for: .normal)
        b5.setTitle("5", for: .normal)
        b6.setTitle("6", for: .normal)
        b7.setTitle("7", for: .normal)
        b8.setTitle("8", for: .normal)
        b9.setTitle("9", for: .normal)
        turn=false
        turnCount=0
        over=false
        resetButton.setTitle("Reset Board?", for: .normal)
    }
    func winner(){
        var message = ""
        if (b1.title(for: .normal) == b2.title(for: .normal) &&         b2.title(for: .normal) == b3.title(for: .normal)) ||
            (b4.title(for: .normal) == b5.title(for: .normal) && b5.title(for: .normal) == b6.title(for: .normal)) ||
            (b7.title(for: .normal) == b8.title(for: .normal) && b8.title(for: .normal) == b9.title(for: .normal)) ||
            (b1.title(for: .normal) == b4.title(for: .normal) &&     b4.title(for: .normal) == b7.title(for: .normal)) ||
            (b2.title(for: .normal) == b5.title(for: .normal) && b5.title(for: .normal) == b8.title(for: .normal)) ||
            (b3.title(for: .normal) == b6.title(for: .normal) && b6.title(for: .normal) == b9.title(for: .normal)) ||
            (b1.title(for: .normal) == b5.title(for: .normal) && b5.title(for: .normal) == b9.title(for: .normal)) ||
            (b3.title(for: .normal) == b5.title(for: .normal) && b5.title(for: .normal) == b7.title(for: .normal))
             {
                if(turn == true){
                    message = "X Won"
                    PrevWinner.text="Previous game result: X"
                    over=true
                }
                else{
                    message = "O Won"
                    PrevWinner.text="Previous game result: O"
                    over=true
                }
        }
        else if(turnCount==9){
            message = "Draw Game"
            PrevWinner.text="Previous game result: Draw"
            over=true
        }
        if(over==true){
            let a = UIAlertController(title: message, message: "Play Again?", preferredStyle: .actionSheet)
            a.addAction(UIAlertAction(title: "Yes", style: .default, handler: {(action: UIAlertAction! ) in self.reset()}))
            a.addAction(UIAlertAction(title: "No", style: .default))
            self.present(a, animated: true)
            if over {
                resetButton.setTitle("Play a new game?", for: .normal)
            }
        }
    }
    @IBAction func Restart(_ sender: Any) {
        reset()
    }
    
    @IBAction func box1(_ sender: UIButton) {
        if(b1.title(for: .normal) != "X" && b1.title(for: .normal) != "O" && !over)
        {
            let t = CurrentTurn()
            if t == true {
                b1.setTitle("X", for: .normal)
            }
            else{
                b1.setTitle("O", for: .normal)
            }
            winner()
        }
        else {
            alreadyTaken()
        }
    }
    @IBAction func box2(_ sender: Any) {
        if(b2.title(for: .normal) != "X" && b2.title(for: .normal) != "O" && !over)
        {
            let t = CurrentTurn()
            if t == true {
                b2.setTitle("X", for: .normal)
            }
            else{
                b2.setTitle("O", for: .normal)
            }
            winner()
        }
        else {
            alreadyTaken()
        }
    }
    
    @IBAction func box3(_ sender: Any) {
        if(b3.title(for: .normal) != "X" && b3.title(for: .normal) != "O" && !over)
        {
            let t = CurrentTurn()
            if t == true {
                b3.setTitle("X", for: .normal)
            }
            else{
                b3.setTitle("O", for: .normal)
            }
            winner()
        }
        else {
            alreadyTaken()
        }
    }
    @IBAction func box4(_ sender: Any) {
        if(b4.title(for: .normal) != "X" && b4.title(for: .normal) != "O" && !over)
        {
            let t = CurrentTurn()
            if t == true {
                b4.setTitle("X", for: .normal)
            }
            else{
                b4.setTitle("O", for: .normal)
            }
            winner()
        }
        else {
            alreadyTaken()
        }
    }
    @IBAction func box5(_ sender: Any) {
        if(b5.title(for: .normal) != "X" && b5.title(for: .normal) != "O" && !over)
        {
            let t = CurrentTurn()
            if t == true {
                b5.setTitle("X", for: .normal)
            }
            else{
                b5.setTitle("O", for: .normal)
            }
            winner()
        }
        else {
            alreadyTaken()
        }
    }
    @IBAction func box6(_ sender: Any) {
        if(b6.title(for: .normal) != "X" && b6.title(for: .normal) != "O" && !over)
        {
            let t = CurrentTurn()
            if t == true {
                b6.setTitle("X", for: .normal)
            }
            else{
                b6.setTitle("O", for: .normal)
            }
            winner()
        }
        else {
            alreadyTaken()
        }
    }
    @IBAction func box7(_ sender: Any) {
        if(b7.title(for: .normal) != "X" && b7.title(for: .normal) != "O" && !over)
        {
            let t = CurrentTurn()
            if t == true {
                b7.setTitle("X", for: .normal)
            }
            else{
                b7.setTitle("O", for: .normal)
            }
            winner()
        }
        else {
            alreadyTaken()
        }
    }
    @IBAction func box8(_ sender: Any) {
        if(b8.title(for: .normal) != "X" && b8.title(for: .normal) != "O" && !over)
        {
            let t = CurrentTurn()
            if t == true {
                b8.setTitle("X", for: .normal)
            }
            else{
                b8.setTitle("O", for: .normal)
            }
            winner()
        }
        else {
            alreadyTaken()
        }
    }
    @IBAction func box9(_ sender: Any) {
        if(b9.title(for: .normal) != "X" && b9.title(for: .normal) != "O" && !over)
        {
            let t = CurrentTurn()
            if t == true {
                b9.setTitle("X", for: .normal)
            }
            else{
                b9.setTitle("O", for: .normal)
            }
            winner()
        }
        else {
            alreadyTaken()
        }
    }
    
    

}

