//
//  UserFeedViewController.swift
//  Navigation
//
//  Created by Сергей Николаев on 26.02.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.title = "Лента"
        let button = UIButton()
        self.view.addSubview(button)
        button.setTitle("Новый пост", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 12
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 70).isActive = true
        button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -70).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    @objc func buttonClicked() {
        let postViewController = PostViewController()
        let post = Post(title: "Новый пост")
        postViewController.post = post.title
        self.navigationController?.pushViewController(postViewController, animated: true)
    }
}

struct Post {
    
    let title: String?
}
