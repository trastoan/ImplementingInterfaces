//
//  AttributesView.swift
//  CharSheet
//
//  Created by Yuri on 20/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class AttributesView: UIView {
    
    let strView: CharacteristicView = {
        let view = CharacteristicView(characteristic: "FOR", value: 3, preValue: "+")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let dexView: CharacteristicView = {
        let view = CharacteristicView(characteristic: "DES", value: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let conView: CharacteristicView = {
        let view = CharacteristicView(characteristic: "CON", value: 1, preValue: "+")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let wisView: CharacteristicView = {
        let view = CharacteristicView(characteristic: "SAB", value: 1, preValue: "+")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let intView: CharacteristicView = {
        let view = CharacteristicView(characteristic: "INT", value: 1, preValue: "-")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let chaView: CharacteristicView = {
        let view = CharacteristicView(characteristic: "CAR", value: 1, preValue: "+")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [strView,dexView, conView, wisView, intView, chaView])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 8
        self.addSubview(stack)
        return stack
    }()
    
    
    init() {
        super.init(frame: .zero)
        configureLayout()
        additionalConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented, because will not be used on IB")
    }
    
    func additionalConfiguration() {
        [strView,dexView, conView, wisView, intView, chaView].forEach {
            $0.updateFonts(value: UIFont.systemFont(ofSize: 20, weight: .medium), characteristic: UIFont.systemFont(ofSize: 10, weight: .light))
        }
    }
    
    
    private func configureLayout() {
        NSLayoutConstraint.activate([
            stack.leftAnchor.constraint(equalTo: self.leftAnchor),
            stack.rightAnchor.constraint(equalTo: self.rightAnchor),
            stack.topAnchor.constraint(equalTo: self.topAnchor),
            stack.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            strView.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
