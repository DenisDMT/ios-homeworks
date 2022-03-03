//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Денис Титаренко on 02.03.2022.
//


import UIKit
class ProfileView: UIView {
    
    @IBOutlet weak var userFoto: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var userBirthday: UILabel!
    
    @IBOutlet weak var userCity: UILabel!
    
    @IBOutlet weak var userText: UITextView!
    
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            self.setupView()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            self.setupView()
        }
        
        private func setupView() {
            let view = self.loadViewFromXib()
            self.addSubview(view)
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
        }
        
        private func loadViewFromXib() -> UIView {
            guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self, options: nil)?.first as? UIView else { return UIView() }
            
            return view
        }

    
}
