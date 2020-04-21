//
//  LifePointsView.swift
//  CharSheet
//
//  Created by Yuri on 20/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class LifePointsView: UIView {
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.addSubview(label)
        return label
    }()
    
    lazy var currentLife: UIProgressView = {
        let progress = UIProgressView()
        progress.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(progress)
        return progress
    }()
    
    lazy var totalPointsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.addSubview(label)
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        descriptionLabel.text = "PV"
        totalPointsLabel.text = "75"
        currentLife.progress = 0.8
        configureLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented, because we don't use IB")
    }
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: self.topAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            currentLife.leadingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor, constant: 12),
            currentLife.centerYAnchor.constraint(equalTo: descriptionLabel.centerYAnchor),
            currentLife.heightAnchor.constraint(equalToConstant: 5),

            totalPointsLabel.leadingAnchor.constraint(equalTo: currentLife.trailingAnchor, constant: 12),
            totalPointsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            totalPointsLabel.centerYAnchor.constraint(equalTo: descriptionLabel.centerYAnchor)
        ])
    }
    
}
