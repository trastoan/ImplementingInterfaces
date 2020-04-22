//
//  CharacteristicXIbView.swift
//  CharSheet
//
//  Created by Yuri on 21/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

@IBDesignable class CharacteristicXibView: UIView {
    
    let nibName = "CharacteristicXibView"
    var contentView: UIView?
    
    @IBInspectable var characteristic: String = "AC" {
        didSet {
            characteristicLabel.text = characteristic
        }
    }
    
    @IBInspectable var value: String = "19" {
        didSet {
            valueLabel.text = value
        }
    }

    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var characteristicLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        guard let view = loadViewFromNib() else { return }
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
