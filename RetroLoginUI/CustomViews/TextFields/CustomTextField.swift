//
//  CustomTextField.swift
//  RetroLoginUI
//
//  Created by Ece Saygut on 14.04.2023.
//

import UIKit

class CustomTextField: UITextField {
    
    public func createTextField(withPlaceholder placeholder: String, isSecureTextEntry: Bool, leftViewImage: UIImage) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.isSecureTextEntry = isSecureTextEntry
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.font = UIFont(name: "PressStart2P-Regular", size: 16)
        textField.textColor = .black
        
        let leftIconView = UIImageView(image: leftViewImage)
        leftIconView.frame = CGRect(x: 10, y: 0, width: 30, height: 30)
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 30))
        textField.leftView?.addSubview(leftIconView)
        textField.leftViewMode = .always
        
        return textField
    }
}
