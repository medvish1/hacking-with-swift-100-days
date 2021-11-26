//
//  ViewController.swift
//  project18
//
//  Created by VICTOR MOREIRA MELLO on 24/11/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("passou aki", 1, true, separator: "-", terminator: ". over")
        
        assert(1 == 1, "nunca")
//        assert(1 == 2, "errou!")
        
        for i in 1...100 {
            print("num \(i).")
        }
    }


}

