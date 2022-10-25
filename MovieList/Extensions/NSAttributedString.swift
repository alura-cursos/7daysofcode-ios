//
//  NSAttributedString.swift
//  MovieList
//
//  Created by Giovanna Moeller on 25/10/22.
//

import Foundation
import UIKit

extension NSAttributedString {
    func withLineSpacing(_ spacing: CGFloat) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = spacing
        let attrString = NSMutableAttributedString(string: string)
        attrString.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: string.count))
        return NSAttributedString(attributedString: attrString)
        //eturn attrString
    }
}
