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
        self.view.backgroundColor = .systemGray
        self.view.addSubview(alertButton)
        self.setupButton()
    }
    
  
    let alertButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 12
        button.clipsToBounds = true
        button.backgroundColor = .systemYellow
        button.setTitle("Показать alert", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private func setupButton() {
        alertButton.addTarget(self, action: #selector(didAlertButton), for: .touchUpInside)
        self.alertButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.alertButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        self.alertButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        self.alertButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc private func didAlertButton() {
        let alert = UIAlertController(title: "Attention", message: "are you sure?", preferredStyle: .alert)
        let yesButton = UIAlertAction(title: "Yes", style: .default, handler: {action in print("Yes")})
        let noButton = UIAlertAction(title: "No", style: .default, handler: {action in print("No")})
        alert.addAction(yesButton)
        alert.addAction(noButton)
        present (alert, animated: true, completion: nil)
    }
}

