//
//  UITableViewCell+text.swift
//  project05
//
//  Created by VICTOR MOREIRA MELLO on 11/11/21.
//

import Foundation
import UIKit

extension UITableViewCell {
    var text: String? {
        get {
            if let content = self.contentConfiguration as? UIListContentConfiguration {
                return content.text
            }
            
            return nil
        }
        set {
            var content = self.contentConfiguration as? UIListContentConfiguration ?? self.defaultContentConfiguration()
            content.text = newValue
            self.contentConfiguration = content
        }
    }
}
