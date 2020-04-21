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
    
    lazy var battleInformation: BattleInformationView = {
        let battle = BattleInformationView()
        battle.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(battle)
        return battle
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        additionalConfigurations()
    }
    
    private func additionalConfigurations() {
        configureLayout()
        
        //Change background color
        view.backgroundColor = .mustardYellow
        //Navigation configuration
        self.title = "Xilyra Zhong"
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            characterIllustration.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            characterIllustration.leftAnchor.constraint(equalTo: view.leftAnchor),
            characterIllustration.rightAnchor.constraint(equalTo: view.rightAnchor),
            characterIllustration.heightAnchor.constraint(equalTo: characterIllustration.widthAnchor),
            
            battleInformation.topAnchor.constraint(equalTo: characterIllustration.bottomAnchor, constant: 96),
            battleInformation.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            battleInformation.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            
        ])
    }
}
