//
//  UIView+.swift
//  MovieList
//
//  Created by Giovanna Moeller on 25/10/22.
//

import Foundation
import UIKit

extension UIView {
    func setBackground() {
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = [UIColor.lightBackground.cgColor, UIColor.darkBackground.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        self.layer.addSublayer(gradient)
    }
}
