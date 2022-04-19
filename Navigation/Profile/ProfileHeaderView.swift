//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Денис Титаренко on 27.03.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private lazy var picture: UIImageView = {
        
        let pictureView = UIImageView()
        
        pictureView.image = UIImage(named: "Helicopter")
        pictureView.frame = CGRect(x: 16, y: 16, width: 140, height: 140)
        pictureView.layer.borderWidth = 3.0
        pictureView.layer.masksToBounds = false
        pictureView.layer.borderColor = UIColor.systemYellow.cgColor
        pictureView.layer.cornerRadius = 70
        pictureView.contentMode = .scaleToFill
        pictureView.clipsToBounds = true
        pictureView.translatesAutoresizingMaskIntoConstraints = true
        
        
        return pictureView
        
    }()
    
    private lazy var namePicture: UILabel = {
        
        let label = UILabel()
        label.frame = CGRect(x: 180, y: 27, width: 135, height: 30)
        label.text = "Alligator!"
        label.textColor = .black
        label.font = UIFont( name: "Helvetica-Bold", size: 18)
        label.translatesAutoresizingMaskIntoConstraints = true
        
        return label
        
    }()
    
    
    private lazy var statusPicture: UILabel = {
        let label = UILabel()
        label.text = "Fire"
        label.textColor = .black
        label.font = UIFont(name: "Helvetica-Regular", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        
        return label
    }()
    
    private lazy var statusButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Show Status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 15
        button.backgroundColor = .systemBlue
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(self.didTapStatusButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.drawSelf()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func drawSelf() {
        self.addSubview(self.picture)
        self.addSubview(self.namePicture)
        self.addSubview(self.statusPicture)
        self.addSubview(self.statusButton)
        
        let leadingButtonConstraint = self.statusButton.leadingAnchor.constraint(equalTo: self.picture.leadingAnchor)
        let trailingButtonConstraint = self.statusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        let topButtonConstraint = self.statusButton.topAnchor.constraint(equalTo: self.picture.bottomAnchor, constant: 16)
        let heightButtonConstraint = self.statusButton.heightAnchor.constraint(equalToConstant: 50)
        
        let bottomButtonConstraint = self.statusButton.bottomAnchor.constraint(equalTo: self.statusButton.topAnchor, constant: -30)
        let leadingLabelConstraint = self.statusPicture.leadingAnchor.constraint(equalTo: self.namePicture.leadingAnchor)
        let bottomLabelConstraint = self.statusPicture.bottomAnchor.constraint(equalTo: self.statusButton.bottomAnchor, constant: -84)
        
        NSLayoutConstraint.activate([ leadingButtonConstraint, trailingButtonConstraint, topButtonConstraint, heightButtonConstraint, bottomButtonConstraint, leadingLabelConstraint, bottomLabelConstraint])
    }
    
    
    
    @objc private func didTapStatusButton() {
        let status = self.statusPicture.text
        if status != nil {
            print(status!)
        }
    }
}

