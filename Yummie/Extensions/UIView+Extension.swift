//
//  UIView+Extension.swift
//  Yummie
//
//  Created by graphic on 2022-11-28.
//

import Foundation
import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {return cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
