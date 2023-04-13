//
//  CustomLabel.swift
//  RetroLoginUI
//
//  Created by Ece Saygut on 14.04.2023.
//

import UIKit

class CustomLabel: UIButton {
    
    func createLabel(firstText: String, secondText: String) {
        self.backgroundColor = .clear
        self.translatesAutoresizingMaskIntoConstraints = false
        let attributedString = NSMutableAttributedString(string: firstText + " ", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray, NSAttributedString.Key.font : UIFont(name: "PressStart2P-Regular", size: 10)!])
        attributedString.append(NSMutableAttributedString(string: secondText, attributes: [NSAttributedString.Key.foregroundColor : UIColor.blue, NSAttributedString.Key.font : UIFont(name: "PressStart2P-Regular", size: 10)!, NSAttributedString.Key.underlineStyle : NSUnderlineStyle.single.rawValue, NSAttributedString.Key.underlineColor : UIColor.blue]))
        self.setAttributedTitle(attributedString, for: .normal)
    }
}
