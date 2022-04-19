//
//  MyTabBarController.swift
//  Navigation
//
//  Created by Денис Титаренко on 19.04.2022.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    let lenta = FeedViewController()//лента
    let profile = ProfileViewController()// профиль
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        mayController()
        
    }
    
    private func mayController(){
        
        
        lenta.tabBarItem.title = "Лента"
        lenta.tabBarItem.image = UIImage(systemName: "heart.fill")//moon.stars.fill, externaldrive.badge.plus
        
        profile.tabBarItem.title = "Профиль"
        profile.tabBarItem.image = UIImage(systemName: "person.circle")//heart.fill , square.stack.3d.down.right.fill
        let navControllerFirst = UINavigationController(rootViewController: lenta)
        
        let navControllerSecond = UINavigationController(rootViewController: profile)
        
        viewControllers = [navControllerFirst, navControllerSecond]
        
    }
    
    
}

