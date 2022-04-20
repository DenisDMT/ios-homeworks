//
//  ViewController.swift
//  Navigation
//
//  Created by Денис Титаренко on 01.03.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        alertButton()
        
    }
    
    private func alertButton(){
        let button = UIButton(frame: CGRect(x: 50, y: 700, width: 300, height: 50))
        //button.center = view.center// кнопка будет по центру
        button.setTitle("Показать оповещение", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
        button.setTitleColor(.black, for: .normal)
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(alertAction), for: .touchUpInside)
        view.addSubview(button)// появление кнопки
    }
    
    @objc private func alertAction(){
        
        let alert = UIAlertController(title: "Перейти назад", message: "Вы точно хотите выйти?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Выйти", style: .default) { _ in
            self.dismiss(animated: true)
           
            print("Выйти")
        }
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .destructive, handler: {action in print("Отмена")})
        
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}

