//
//  ViewController.swift
//  Example Login and Register screen
//
//  Created by Wismin Effendi on 10/28/17.
//  Copyright © 2017 Wismin Effendi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let inputContainerView = UIView()
    let nameTextField = UITextField()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let borderView = UIView()
    let secondBorderView = UIView()
    let registerButton = UIButton(type: .system)
    let profileImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.init(red: 61/255, green: 91/255, blue: 151/255, alpha: 1.0)
        navigationItem.title = "Login/Register"
        setupViews()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    fileprivate func setupFirstBorderView() {
        borderView.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        borderView.translatesAutoresizingMaskIntoConstraints = false
        inputContainerView.addSubview(borderView)
        borderView.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        borderView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        borderView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        borderView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
    }
    
    fileprivate func setupNameTextField() {
        nameTextField.placeholder = "Name"
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        inputContainerView.addSubview(nameTextField)
        nameTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
    }
    
    fileprivate func setupEmailTextField() {
        emailTextField.placeholder = "Email"
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        inputContainerView.addSubview(emailTextField)
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: nameTextField.leftAnchor).isActive = true
    }

    fileprivate func setupPasswordTextField() {
        passwordTextField.placeholder = "Password"
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        inputContainerView.addSubview(passwordTextField)
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: emailTextField.leftAnchor).isActive = true
    }
    
    fileprivate func setupSecondBorderView() {
        secondBorderView.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        secondBorderView.translatesAutoresizingMaskIntoConstraints = false
        inputContainerView.addSubview(secondBorderView)
        secondBorderView.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        secondBorderView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        secondBorderView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        secondBorderView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
    }
    
    fileprivate func setupInputContainerView() {
        inputContainerView.backgroundColor = UIColor.white
        inputContainerView.layer.masksToBounds = true
        inputContainerView.layer.cornerRadius = 5
        inputContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(inputContainerView)
        
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    fileprivate func setupRegisterButton() {
        registerButton.setTitle("Register", for: .normal)
        view.addSubview(registerButton)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.layer.cornerRadius = 5
        registerButton.layer.masksToBounds = true
        registerButton.tintColor = .white
        registerButton.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1.0)
        registerButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        registerButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        registerButton.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        registerButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 20).isActive = true
        registerButton.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchUpInside)
    }
    
    fileprivate func setupProfileImage() {
        profileImageView.image = UIImage(named: "mikasa")
        profileImageView.contentMode = .scaleAspectFit
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileImageView)
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.bottomAnchor.constraint(equalTo: inputContainerView.topAnchor, constant: -20).isActive = true
        profileImageView.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    func setupViews() {
        
        setupInputContainerView()
        
        setupNameTextField()
        setupFirstBorderView()
        setupEmailTextField()
        setupSecondBorderView()
        setupPasswordTextField()
        setupRegisterButton()
        
        setupProfileImage()
        
        
    }
    
    func buttonPressed(sender: UIButton) {
        print("Button pressed")
    }
}

