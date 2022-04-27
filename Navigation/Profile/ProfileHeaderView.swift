//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Денис Титаренко on 19.04.2022.
//

import UIKit

class ProfileHeaderView: UIView  {
    
    private lazy var imageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 16, y: 16, width: 160, height: 160)
        imageView.image = UIImage(named: "Pion")
        imageView.layer.cornerRadius = 80
        imageView.layer.borderWidth = 3.0
        imageView.layer.masksToBounds = false
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.contentMode = .redraw
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private lazy var NameLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 200, y:47, width: 135, height: 30)
        label.text = "Pion"
        label.textColor = .black
        label.font = UIFont(name: "Helvetica-Bold", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = true
        return label
    }()
    
    private lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.text = "Fire the salvo!"
        label.textColor = .gray
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = true
        label.frame = CGRect(x: 200, y: 118, width: 135, height: 30)
        return label
    }()
    
    private lazy var statusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.backgroundColor = .systemBlue
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(self.buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = true
        button.frame = CGRect(x: 16, y: 192, width: 384, height: 50)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.mapping()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func mapping() {
        self.addSubview(self.imageView)
        self.addSubview(self.NameLabel)
        self.addSubview(self.statusLabel)
        self.addSubview(self.statusButton)
        
    }
    
    @objc private func buttonPressed (){
        let status = self.statusLabel.text
        if status != nil {
            print(status!)
        }
    }
    
}
