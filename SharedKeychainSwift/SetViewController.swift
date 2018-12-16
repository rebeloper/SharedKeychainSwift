//
//  SetViewController.swift
//  SharedKeychainSwift
//
//  Created by Alex Nagy on 16/12/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit
import TinyConstraints

class SetViewController: UIViewController {
    
    lazy var nameTextField: UITextField = {
        var textField = UITextField()
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.backgroundColor = #colorLiteral(red: 0.6980392157, green: 0.7450980392, blue: 0.7647058824, alpha: 1)
        textField.placeholder = "Enter your name"
        return textField
    }()
    
    lazy var setIntoKeychainButton: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Set", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = #colorLiteral(red: 0, green: 0.7215686275, blue: 0.5803921569, alpha: 1)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(setIntoKeychainButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var deleteNameButton: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Delete Name", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.7960784314, blue: 0.431372549, alpha: 1)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(deleteNameButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var clearButton: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Clear Keychain", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = #colorLiteral(red: 0.8392156863, green: 0.1882352941, blue: 0.1921568627, alpha: 1)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(clearButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc fileprivate func setIntoKeychainButtonTapped() {
        
    }
    
    @objc fileprivate func deleteNameButtonTapped() {
        
    }
    
    @objc fileprivate func clearButtonTapped() {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupViews()
    }
    
    fileprivate func setupViews() {
        view.backgroundColor = #colorLiteral(red: 0.8745098039, green: 0.9019607843, blue: 0.9137254902, alpha: 1)
        
        view.addSubview(nameTextField)
        view.addSubview(setIntoKeychainButton)
        view.addSubview(deleteNameButton)
        view.addSubview(clearButton)
        
        nameTextField.edgesToSuperview(excluding: .bottom, insets: .top(48) + .left(12) + .right(12), usingSafeArea: true)
        nameTextField.height(32)
        
        setIntoKeychainButton.topToBottom(of: nameTextField, offset: 12)
        setIntoKeychainButton.leftToSuperview(offset: 12, usingSafeArea: true)
        setIntoKeychainButton.rightToSuperview(offset: -12, usingSafeArea: true)
        setIntoKeychainButton.height(50)
        
        deleteNameButton.topToBottom(of: setIntoKeychainButton, offset: 12)
        deleteNameButton.leftToSuperview(offset: 12, usingSafeArea: true)
        deleteNameButton.rightToSuperview(offset: -12, usingSafeArea: true)
        deleteNameButton.height(50)
        
        clearButton.topToBottom(of: deleteNameButton, offset: 12)
        clearButton.leftToSuperview(offset: 12, usingSafeArea: true)
        clearButton.rightToSuperview(offset: -12, usingSafeArea: true)
        clearButton.height(50)
        
    }

}

