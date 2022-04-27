//
//  FeedViewController.swift
//  Navigation
//
//  Created by Денис Титаренко on 19.04.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    struct Post {
        var title: String
    }
    
    let lastPost = Post.init(title: "Мой пост")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        self.myButton ()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Моя лента"
    }
    
    
    private func myButton() {
        
        let button = UIButton(frame: CGRect(x: 50, y: 700, width: 330, height: 50))
        button.setTitle("Перейти в пост", for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 15
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
        view.addSubview(button)// добавление кнопки !!
        
        
    }
    
    
    @objc private func tapAction(){
        
        let vc = PostViewController()
        vc.navigationItem.title = lastPost.title
        self.navigationController?.pushViewController(vc, animated: true) // появляется в стеке
        
    }
}

