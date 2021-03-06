//
//  CharacterIllustrationView.swift
//  CharSheet
//
//  Created by Yuri on 20/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class CharacterIllustrationView: UIView {
    lazy var roundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(view)
        return view
    }()
    
    lazy var characterImage: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = false
        imageView.contentMode = .scaleAspectFit
        self.addSubview(imageView)
        return imageView
    }()
    
    init(image: UIImage, circleColor: UIColor = .lightBlack) {
        super.init(frame: .zero)
        roundView.backgroundColor = circleColor
        characterImage.image = image
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented, because will not be used on a storyboard")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        //This will make the view rounded
        roundView.layer.cornerRadius = roundView.frame.height/2
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
        //Round View Constraints
            roundView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 32),
            roundView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -32),
            roundView.heightAnchor.constraint(equalTo: roundView.widthAnchor),
            roundView.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            
            
            characterImage.centerYAnchor.constraint(equalTo: roundView.centerYAnchor),
            characterImage.centerXAnchor.constraint(equalTo: roundView.centerXAnchor),
            characterImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.2),
            characterImage.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1.2),
        ])
    }
}
