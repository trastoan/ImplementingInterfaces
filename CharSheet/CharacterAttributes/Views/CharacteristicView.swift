//
//  CharacteristicView.swift
//  CharSheet
//
//  Created by Yuri on 20/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class CharacteristicView: UIView {
    
    lazy var characteristicLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        label.textAlignment = .center
//        label.adjustsFontSizeToFitWidth = true
//        label.minimumScaleFactor = 0.5
        return label
    }()
    
    lazy var valueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(label)
        label.font = UIFont.systemFont(ofSize: 32, weight: .medium)
        label.textAlignment = .center
//        label.adjustsFontSizeToFitWidth = true
//        label.minimumScaleFactor = 0.5
        return label
    }()
    

    init(characteristic: String, value: Int, preValue: String = "") {
        super.init(frame: .zero)
        configureLayout()
        characteristicLabel.text = characteristic
        valueLabel.text = preValue + "\(value)"
    }
    
    
    override func draw(_ rect: CGRect) {
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.backgroundColor = .clear
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            valueLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            valueLabel.bottomAnchor.constraint(equalTo: characteristicLabel.topAnchor, constant: -10),
            valueLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            characteristicLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            characteristicLabel.bottomAnchor.constraint(lessThanOrEqualTo: self.bottomAnchor, constant: -5)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented, because will not be used on IB")
    }
}
