//
//  InfoViewController.swift
//  Navigation
//
//  Created by Сергей Николаев on 26.02.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray2
        self.title = "Информация"
        let button = UIButton()
        self.view.addSubview(button)
        button.setTitle("Показать уведомление", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 12
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(alertClicked), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70).isActive = true
        button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    @objc func alertClicked() {
        let alert = UIAlertController(title: "Уведомление", message: "Сообщение", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "Да", style: .default) {
            UIAlertAction in
            print("Уведомление подтверждено")
        }
        let noBtn = UIAlertAction(title: "Нет", style: .destructive) {
            UIAlertAction in
            print("Уведомление отклонено")
        }
        alert.addAction(okBtn)
        alert.addAction(noBtn)
        self.present(alert, animated: true, completion: nil)
    }
}
