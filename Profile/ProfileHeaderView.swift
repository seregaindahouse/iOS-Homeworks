//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Сергей Николаев on 17.03.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    var userPhotoImageView: UIImageView
    var userNameLabel: UILabel
    var userStatusLabel: UILabel
    var userStatusButton: UIButton
    var userStatusTextField: UITextField
    private var statusText: String
    
    init() {
        
        userPhotoImageView = UIImageView(image: UIImage(named: "UserPhoto"))
        userNameLabel = UILabel()
        userStatusLabel = UILabel()
        userStatusButton = UIButton()
        userStatusTextField = UITextField()
        statusText = ""
        super.init(frame: CGRect())
        
        userPhotoImageView.translatesAutoresizingMaskIntoConstraints = false
        userPhotoImageView.layer.cornerRadius = 50
        userPhotoImageView.layer.borderWidth = 3
        userPhotoImageView.clipsToBounds = true
        userPhotoImageView.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1)
        self.addSubview(userPhotoImageView)
        
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.text = "Илон Маск"
        userNameLabel.textColor = .black
        userNameLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.addSubview(userNameLabel)
        
        userStatusLabel.translatesAutoresizingMaskIntoConstraints = false
        userStatusLabel.text = "В ожидании чего-то..."
        userStatusLabel.textColor = .gray
        userStatusLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        self.addSubview(userStatusLabel)
        
        userStatusButton.translatesAutoresizingMaskIntoConstraints = false
        userStatusButton.setTitle("Установить статус", for: .normal)
        userStatusButton.setTitleColor(.white, for: .normal)
        userStatusButton.backgroundColor = .blue
        userStatusButton.layer.cornerRadius = 4
        userStatusButton.layer.shadowColor = UIColor.black.cgColor
        userStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        userStatusButton.layer.shadowOpacity = 0.7
        userStatusButton.layer.shadowRadius = 4
        userStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        self.addSubview(userStatusButton)
        
        userStatusTextField.translatesAutoresizingMaskIntoConstraints = false
        userStatusTextField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        userStatusTextField.textColor = .black
        userStatusTextField.backgroundColor = .white
        userStatusTextField.placeholder = "В ожидании чего-то..."
        userStatusTextField.layer.cornerRadius = 12
        userStatusTextField.layer.borderWidth = 1
        userStatusTextField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        userStatusTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: userStatusTextField.frame.height))
        userStatusTextField.leftViewMode = .always
        userStatusTextField.addTarget(self, action: #selector(statusTextChanged), for: .editingChanged)
        self.addSubview(userStatusTextField)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        NSLayoutConstraint.activate([
            self.leftAnchor.constraint(equalTo: superview!.leftAnchor),
            self.rightAnchor.constraint(equalTo: superview!.rightAnchor),
            self.topAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.topAnchor),
            self.heightAnchor.constraint(equalToConstant: 220),
            
            userPhotoImageView.widthAnchor.constraint(equalToConstant: 100),
            userPhotoImageView.heightAnchor.constraint(equalTo: userPhotoImageView.widthAnchor),
            userPhotoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
            userPhotoImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            
            userNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 27),
            userNameLabel.leftAnchor.constraint(equalTo: userPhotoImageView.rightAnchor, constant: 16),
            userNameLabel.rightAnchor.constraint(greaterThanOrEqualTo: self.rightAnchor, constant: -16),
            
            userStatusLabel.leftAnchor.constraint(equalTo: userPhotoImageView.rightAnchor, constant: 16),
            userStatusLabel.rightAnchor.constraint(greaterThanOrEqualTo: self.rightAnchor, constant: -16),
            userStatusLabel.bottomAnchor.constraint(equalTo: userStatusButton.topAnchor, constant: -64),
            
            userStatusButton.topAnchor.constraint(equalTo: userPhotoImageView.bottomAnchor, constant: 48),
            userStatusButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            userStatusButton.rightAnchor.constraint(greaterThanOrEqualTo: self.rightAnchor, constant: -16),
            userStatusButton.heightAnchor.constraint(equalToConstant: 50),
            
            userStatusTextField.leftAnchor.constraint(equalTo: userPhotoImageView.rightAnchor, constant: 16),
            userStatusTextField.bottomAnchor.constraint(equalTo: userStatusButton.topAnchor, constant: -16),
            userStatusTextField.rightAnchor.constraint(greaterThanOrEqualTo: self.rightAnchor, constant: -16),
            userStatusTextField.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    
    @objc func buttonPressed() {
        userStatusLabel.text = statusText
        if let textUserStatus = userStatusLabel.text {
            print(textUserStatus)
        }
    }
    
    @objc func statusTextChanged(_ textField: UITextField) {
        if let newStatusText = userStatusTextField.text {
            statusText = newStatusText
        }
    }
}
