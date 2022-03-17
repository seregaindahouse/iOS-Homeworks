//
//  UserProfileViewController.swift
//  Navigation
//
//  Created by Сергей Николаев on 26.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.title = "Профиль"
        let profileHeaderView = ProfileHeaderView()
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(profileHeaderView)
    }
    
    override func viewWillLayoutSubviews() {
        self.view.subviews.first?.frame = self.view.frame
    }
}
