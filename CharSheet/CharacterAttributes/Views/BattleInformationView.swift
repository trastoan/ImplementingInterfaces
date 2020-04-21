//
//  BattleInformationView.swift
//  CharSheet
//
//  Created by Yuri on 20/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class BattleInformationView: UIView {
    
    lazy var classAndLevelLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.text = "Paladin 16"
        label.textColor = .strongRed
        self.addSubview(label)
        return label
    }()
    
    let armorView: CharacteristicView = {
        let view = CharacteristicView(characteristic: "CA", value: 19)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let initiativeView: CharacteristicView = {
        let view = CharacteristicView(characteristic: "Iniciativa", value: 4, preValue: "+")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let movementView: CharacteristicView = {
        let view = CharacteristicView(characteristic: "Desloc.", value: 15)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [armorView,initiativeView,movementView])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 30
        self.addSubview(stack)
        return stack
    }()
    
    lazy var lifeView: LifePointsView = {
        let view = LifePointsView()
        view.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(view)
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented, because will not be used on IB")
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            classAndLevelLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            classAndLevelLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            classAndLevelLabel.trailingAnchor.constraint(lessThanOrEqualTo: self.trailingAnchor, constant: 16),
            classAndLevelLabel.bottomAnchor.constraint(equalTo: stack.topAnchor, constant: -10),
            
            stack.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 48),
            stack.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -48),
            
            
            armorView.heightAnchor.constraint(equalToConstant: 89),
            
            lifeView.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: 16),
            lifeView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            lifeView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            lifeView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
}
