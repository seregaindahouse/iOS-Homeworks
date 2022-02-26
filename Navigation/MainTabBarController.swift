//
//  MainTabBarController.swift
//  Navigation
//
//  Created by Сергей Николаев on 26.02.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupTabBar()
    }
    
    func setupTabBar() {
        let feedViewController = createNavController(vc: FeedViewController(), itemName: "Лента", ItemImage: "note.text")
        
        let profileViewController = createNavController(vc: ProfileViewController(), itemName: "Профиль", ItemImage: "person.crop.circle")
        
        self.viewControllers = [feedViewController, profileViewController]
    }
    
    func createNavController(vc: UIViewController, itemName: String, ItemImage: String) -> UINavigationController {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: ItemImage)?.withAlignmentRectInsets(.init(top: 0, left: 0, bottom: 0, right: 0))  ,tag: 0)
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 0)
        
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        
        return navController
    }
}
