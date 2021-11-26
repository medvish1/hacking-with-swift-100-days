//
//  Person.swift
//  project10
//
//  Created by VICTOR MOREIRA MELLO on 23/11/21.
//

import UIKit

class Person: NSObject, NSCoding {
    
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    
    required init?(coder decoder: NSCoder) {
        name = decoder.decodeObject(forKey: "name") as? String ?? ""
        image = decoder.decodeObject(forKey: "image") as? String ?? ""
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(image, forKey: "image")
    }
}
