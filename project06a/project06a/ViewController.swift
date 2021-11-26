//
//  ViewController.swift
//  project02
//
//  Created by VICTOR MOREIRA MELLO on 09/11/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    
    var conties = [String]()
    var score = 0
    var correctAnswer = 0
    var attempts = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        conties = ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
        
    }
    
    func askQuestion(action: UIAlertAction? = nil) {
        conties.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: conties[0]), for: .normal)
        button2.setImage(UIImage(named: conties[1]), for: .normal)
        button3.setImage(UIImage(named: conties[2]), for: .normal)
        
        title = "\(conties[correctAnswer].uppercased()) -- Score: \(score)"
        
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        attempts += 1
        var title: String
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong"
            score -= 1
        }
        
        var ac: UIAlertController
        if attempts < 10 {
            ac = UIAlertController(title: title, message: "That was the \(conties[sender.tag]) flag.\nYour score is \(score)", preferredStyle: .alert)
            
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        } else {
            ac = UIAlertController(title: title, message: "That was the \(conties[sender.tag]) flag.\nYour final score is \(score)", preferredStyle: .alert)
            
            ac.addAction(UIAlertAction(title: "Play again", style: .default, handler: reset))
        }
        
        present(ac, animated: true)
    }
    
    func reset(action: UIAlertAction?) {
        attempts = 0
        score = 0
        askQuestion()
    }
}

