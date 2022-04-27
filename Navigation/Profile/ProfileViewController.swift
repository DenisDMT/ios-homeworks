//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Денис Титаренко on 19.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    func setupNavigationBar() {
        self.navigationItem.title = "Профиль"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setupNavigationBar()//добавляет title запуская функцию
        
    }
    
    private lazy var profileHeaderView: ProfileHeaderView = {
        let view = ProfileHeaderView(frame: self.view.safeAreaLayoutGuide.layoutFrame)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewWillLayoutSubviews(){  // это добавляет profileHeaderView на вью
        
        self.view.addSubview(self.profileHeaderView)
        self.profileHeaderView.backgroundColor = .lightGray
        
    }
    
}



