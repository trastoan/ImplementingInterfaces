//
//  RandomViewController.swift
//  CharSheet
//
//  Created by Yuri on 22/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {
    
    lazy var charView: CharacteristicXibView = {
        let charView = CharacteristicXibView(with: "Desloc.", value: "15m")
        charView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(charView)
        return charView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureLayout()
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            charView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            charView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            charView.widthAnchor.constraint(equalToConstant: 82),
            charView.heightAnchor.constraint(equalToConstant: 72)
        ])
    }
}
