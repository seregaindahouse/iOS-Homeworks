//
//  PostViewController.swift
//  Navigation
//
//  Created by Сергей Николаев on 26.02.2022.
//

import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray4
        let newPost = Post()
        let titleLabel = UILabel()
        titleLabel.text = newPost.title
        titleLabel.font = UIFont.systemFont(ofSize: 17)
        navigationItem.titleView = titleLabel
        self.navigationItem.backButtonTitle = "Назад"
        let infoImage = UIImage(systemName: "info.circle")
        let infoButton = UIBarButtonItem(image: infoImage, style: .done, target: self, action: #selector(buttonInfoClicked))
        self.navigationItem.rightBarButtonItem = infoButton
    }
    
    @objc func buttonInfoClicked() {
        let infoViewController = InfoViewController()
        self.navigationController?.pushViewController(infoViewController, animated: true)
    }
}
