//
//  FeedViewController.swift
//  Navigation
//
//  Created by Денис Титаренко on 07.03.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    struct Post {
        var title: String
    }
    
    let lastPost = Post.init(title: "Мой пост")
    
    let postButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 12
        button.clipsToBounds = true
        button.backgroundColor = .systemBlue
        button.setTitle("Перейти на пост", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        return button
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(postButton)
        self.setupButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Моя Лента"
    }
    
    private func setupButton() {
        postButton.addTarget(self,action: #selector(didTapTransitionButton), for: .touchUpInside)
        self.postButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.postButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.postButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.postButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc private  func didTapTransitionButton() {
        let postVC = PostViewController()
        postVC.navigationItem.title = lastPost.title
        self.navigationController?.pushViewController(postVC, animated: true)
    }
}
