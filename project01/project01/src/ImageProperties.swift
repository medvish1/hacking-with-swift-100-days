//
//  ImageProperties.swift
//  project01
//
//  Created by VICTOR MOREIRA MELLO on 09/11/21.
//

import Foundation

struct ImageProperties {
    var name: String {
        get {
            let index = fileName.firstIndex(of: ".") ?? fileName.endIndex
            return String(fileName[..<index])
        }
    }
    let fileName: String
    let position: Int
    let numberOfPictures: Int
}
