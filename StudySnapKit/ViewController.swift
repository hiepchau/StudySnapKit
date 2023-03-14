//
//  ViewController.swift
//  StudySnapKit
//
//  Created by Châu Hiệp on 12/03/2023.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    
    let avatar = UIImageView()
    let username = UITextField()
    let txtUsername = UILabel()
    let password = UITextField()
    let txtPassword = UILabel()
    let checkBoxButton = UIButton()
    let txtRememberme = UILabel()
    let signInButton = UIButton()
    let cancelButton = UIButton()
    let txtPolicy = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerUI()
        setupUI()
    }
    
    func registerUI() {
        self.view.addSubview(avatar)
        self.view.addSubview(username)
        self.view.addSubview(txtUsername)
        self.view.addSubview(password)
        self.view.addSubview(txtPassword)
        self.view.addSubview(checkBoxButton)
        self.view.addSubview(txtRememberme)
        self.view.addSubview(signInButton)
        self.view.addSubview(cancelButton)
        self.view.addSubview(txtPolicy)
    }
    
    func setupUI() {
        self.setupAvatarUI()
        self.setupUsernameUI()
        self.setupPasswordUI()
        self.setupRememberUI()
        self.setupButtonUI()
        self.setupPolicyUI()
    }
    
    func setupAvatarUI() {
        avatar.layer.cornerRadius = 40
        avatar.layer.borderColor = UIColor.black.cgColor
        avatar.layer.borderWidth = 1.0

        avatar.clipsToBounds = true
        avatar.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
            make.width.height.equalTo(80)

        }
    }

    func setupUsernameUI() {
        txtUsername.text = "username"
        
        txtUsername.snp.makeConstraints { make in
            make.top.equalTo(avatar.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(30)
            make.centerY.equalTo(username.snp.centerY)
        }
        txtUsername.setContentHuggingPriority(UILayoutPriority(rawValue: 300), for: .horizontal)
        txtUsername.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 1000), for: .horizontal)
        username.layer.borderColor = UIColor.black.cgColor
        username.layer.borderWidth = 1.0
        username.snp.makeConstraints { make in
            make.top.equalTo(txtUsername.snp.top)
            make.trailing.equalToSuperview().offset(-8)
            make.leading.equalTo(txtUsername.snp.trailing).offset(15)
            make.centerY.equalTo(txtUsername.snp.centerY)
        }
    }

    func setupPasswordUI() {
        txtPassword.text = "password"
        txtPassword.snp.makeConstraints { make in
            make.top.equalTo(txtUsername.snp.bottom).offset(30)
            make.leading.equalTo(txtUsername.snp.leading)
            make.centerY.equalTo(password.snp.centerY)
        }
        txtPassword.setContentHuggingPriority(UILayoutPriority(rawValue: 300), for: .horizontal)
        txtPassword.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 1000), for: .horizontal)
        password.layer.borderColor = UIColor.black.cgColor
        password.layer.borderWidth = 1.0
        password.isSecureTextEntry = true
        password.snp.makeConstraints { make in
            make.top.equalTo(txtPassword.snp.top)
            make.trailing.equalTo(username.snp.trailing)
            make.leading.equalTo(txtPassword.snp.trailing).offset(15)
            make.centerY.equalTo(txtPassword.snp.centerY)
        }


    }

    func setupRememberUI() {
        checkBoxButton.setImage(UIImage(systemName: "square"), for: .normal)
        
        checkBoxButton.snp.makeConstraints { make in
            make.width.height.equalTo(30)
            make.top.equalTo(txtPassword.snp.bottom).offset(30)
            make.leading.equalTo(txtUsername.snp.leading)
            make.centerY.equalTo(txtRememberme.snp.centerY)
        }

        txtRememberme.text = "Remember me"
        txtRememberme.snp.makeConstraints { make in
            make.top.equalTo(checkBoxButton.snp.top)
            make.leading.equalTo(checkBoxButton.snp.trailing).offset(8)
            make.centerY.equalTo(checkBoxButton.snp.centerY)
        }
    }

    func setupButtonUI() {
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitleColor(.black, for: .normal)
        signInButton.layer.borderColor = UIColor.black.cgColor
        signInButton.layer.borderWidth = 1.0
        signInButton.snp.makeConstraints { make in
            make.leading.equalTo(txtUsername.snp.leading)
            make.width.equalTo(cancelButton.snp.width)
            make.centerY.equalTo(cancelButton.snp.centerY)
            make.trailing.equalTo(cancelButton.snp.leading).offset(-50)
        }

        
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.setTitleColor(.black, for: .normal)
        cancelButton.layer.borderColor = UIColor.black.cgColor
        cancelButton.layer.borderWidth = 1.0
        cancelButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-30)
            make.centerY.equalTo(signInButton.snp.centerY)
        }
    }

    func setupPolicyUI() {
        txtPolicy.text = "By signed In that you agree\nwith our policy right."
        txtPolicy.numberOfLines = 2
        txtPolicy.textAlignment = .center
        txtPolicy.snp.makeConstraints { make in
            make.top.equalTo(signInButton.snp.bottom).offset(30)
            make.bottom.equalToSuperview().offset(-50)
            make.centerX.equalToSuperview()
        }
    }
}

