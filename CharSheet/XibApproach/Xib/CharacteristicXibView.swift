//
//  CharacteristicXIbView.swift
//  CharSheet
//
//  Created by Yuri on 21/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

@IBDesignable public class CharacteristicXibView: UIView {
    
    @IBInspectable public var characteristic: String = "AC" {
        didSet {
            characteristicLabel.text = characteristic
        }
    }
    
    @IBInspectable public var value: String = "19" {
        didSet {
            valueLabel.text = value
        }
    }
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var characteristicLabel: UILabel!
    
    let nibName = "CharacteristicXibView"
    var contentView: UIView?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupXib()
    }
    
    init(with characteristic: String, value: String) {
        super.init(frame: .zero)
        setupXib()
        valueLabel.text = value
        characteristicLabel.text = characteristic
    }
    
    private func setupXib() {
        guard let view = loadViewFromNib() else { fatalError("Wrong xib name") }
        view.frame = self.bounds
        self.addSubview(view)
        contentView = view
    }

    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
}
