//
//  CharSheetViewController.swift
//  CharSheet
//
//  Created by Yuri on 20/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class CharSheetViewController: UIViewController {
    
    lazy var characterIllustration: CharacterIllustrationView =  {
        let illustration = CharacterIllustrationView(image: UIImage(named:"example")!)
        illustration.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(illustration)
        return illustration
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        additionalConfigurations()
    }
    
    private func additionalConfigurations() {
        configureLayout()
        
        //Change background color
        view.backgroundColor = UIColor(displayP3Red: 232.0/255.0, green: 182.0/255.0, blue: 84.0/255, alpha: 1)
        
        //Navigation configuration
        self.title = "Xilyra Zhong"
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            characterIllustration.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            characterIllustration.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            characterIllustration.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            characterIllustration.heightAnchor.constraint(equalTo: characterIllustration.widthAnchor)
        
        ])
    }
}
