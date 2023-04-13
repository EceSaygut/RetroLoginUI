//
//  SignupViewController.swift
//  RetroLoginUI
//
//  Created by Ece Saygut on 2.04.2023.
//

import UIKit

class SignupViewController: UIViewController {
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let emailTextField: UITextField = {
        let textField = CustomTextField().createTextField(withPlaceholder: "Email", isSecureTextEntry: false, leftViewImage: UIImage(named: "email")!)
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = CustomTextField().createTextField(withPlaceholder: "Password", isSecureTextEntry: true, leftViewImage: UIImage(named: "password")!)
        return textField
    }()
    
    private let confirmPasswordTextField: UITextField = {
        let textField = CustomTextField().createTextField(withPlaceholder: "Confirm Password", isSecureTextEntry: true, leftViewImage: UIImage(named: "password")!)
        return textField
    }()
    
    private let registerButton: UIButton = {
        
        let registerButton = CustomButton().createButton(withTitle: "Register")
        return registerButton
    }()
    
    private let loginLabel: UIButton = {
        let loginLabel = CustomLabel()
        loginLabel.createLabel(firstText: "Have an account?", secondText: "Login")
        return loginLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(loginLabelTapped))
        loginLabel.addGestureRecognizer(tapGesture)
        self.navigationItem.hidesBackButton = true
    }
    
    @objc private func loginLabelTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    private func configureUI() {
        view.addSubview(logoImageView)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(confirmPasswordTextField)
        view.addSubview(registerButton)
        view.addSubview(loginLabel)
        
        NSLayoutConstraint.activate([
            
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.bounds.height * 0.1),
            logoImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.99),
            logoImageView.heightAnchor.constraint(equalTo: logoImageView.widthAnchor, multiplier: 0.43),
            
            emailTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: view.bounds.height * 0.01),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.bounds.width * 0.1),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: view.bounds.width * -0.1),
            emailTextField.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.06),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: view.bounds.height * 0.02),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalTo: emailTextField.heightAnchor),
            
            confirmPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: view.bounds.height * 0.02),
            confirmPasswordTextField.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            confirmPasswordTextField.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            confirmPasswordTextField.heightAnchor.constraint(equalTo: passwordTextField.heightAnchor),
            
            registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registerButton.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: view.bounds.height * 0.03),
            registerButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            registerButton.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.12),
            
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginLabel.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 20),
            loginLabel.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: view.bounds.height * 0.15),
        ])
    }
}

