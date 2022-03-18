//
//  InfoViewController.swift
//  Navigation
//
//  Created by Денис Титаренко on 07.03.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemFill
        self.view.addSubview(alertButton)
        self.setupButton()
    }
    
  
    let alertButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 14
        button.clipsToBounds = true
        button.backgroundColor = .systemYellow
        button.setTitle("Показать оповещение", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    private func setupButton() {
        alertButton.addTarget(self, action: #selector(didAlertButton), for: .touchUpInside)
        self.alertButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.alertButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
        self.alertButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
        self.alertButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    @objc private func didAlertButton() {
        let alert = UIAlertController(title: "Внимание", message: "Вы хотите этого ?", preferredStyle: .alert)
        let yesButton = UIAlertAction(title: "Yes", style: .default, handler: {action in print("Yes")})
        let noButton = UIAlertAction(title: "No", style: .default, handler: {action in print("No")})
        alert.addAction(yesButton)
        alert.addAction(noButton)
        present (alert, animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Моя Лента"
    }
}

