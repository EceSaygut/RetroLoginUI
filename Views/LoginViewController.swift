//
//  LoginViewController.swift
//  RetroLoginUI
//
//  Created by Ece Saygut on 2.04.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let emailTextField: UITextField = {
        let textField = CustomTextField().createTextField(withPlaceholder: "Email", isSecureTextEntry: false, leftViewImage: UIImage(named: "email")!)
        textField.keyboardType = .emailAddress
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = CustomTextField().createTextField(withPlaceholder: "Password", isSecureTextEntry: true, leftViewImage: UIImage(named: "password")!)
        return textField
    }()
    
    private let loginButton: UIButton = {
        let loginButton = CustomButton().createButton(withTitle: "Login")
        return loginButton
    }()
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password?", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont(name: "PressStart2P-Regular", size: 14)
        
        return button
    }()
    
    private let signUpLabel: UIButton = {
        let signUpButton = CustomLabel()
        signUpButton.createLabel(firstText: "Don't have an account?", secondText: "Sign Up")
        return signUpButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        signUpLabel.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        
    }
    
    private func configureUI() {
        view.addSubview(logoImageView)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(signUpLabel)
        
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
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: view.bounds.height * 0.03),
            loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            loginButton.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.12),
            
            forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: view.bounds.height * 0.001),
            forgotPasswordButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.08),
            
            signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signUpLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: view.bounds.height * 0.03),
            signUpLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            signUpLabel.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.08),
            
        ])
    }
    
    @objc private func forgotPasswordButtonTapped() {
        
    }
    
    @objc private func loginButtonTapped() {
        
    }
    
    @objc private func signUpButtonTapped() {
        let signUpVC = SignupViewController()
        navigationController?.pushViewController(signUpVC, animated: true)
    }
}
