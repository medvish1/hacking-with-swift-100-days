//
//  ViewController.swift
//  project06b
//
//  Created by VICTOR MOREIRA MELLO on 12/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    let names = ["ONE", "TWO", "THREE", "FOUR", "FIVE"]
    let colors: [UIColor] = [.red, .purple, .brown, .blue, .yellow]
    var labels = [UILabel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        var labelsDictionary = [String: UILabel]()
        
        for (i, color) in colors.enumerated() {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.backgroundColor = color
            label.text = color.accessibilityName
            label.sizeToFit()
            
            
            view.addSubview(label)
            labels.append(label)
            
            labelsDictionary["label\(i+1)"] = label
        }
        
//        for item in labelsDictionary.keys {
//            view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(item)]|", options: [], metrics: nil, views: labelsDictionary))
//        }
//
//        let metrics = ["labelHeight": 88]
//        view.addConstraints( NSLayoutConstraint.constraints(
//            withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]->=10-|",
//            options: [], metrics: metrics, views: labelsDictionary))
        
        
        var previous: UILabel?
        for label in labelsDictionary.values {
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true

            if let previous = previous {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }

            previous = label
        }
        
    }


}

