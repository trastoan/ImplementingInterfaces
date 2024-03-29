//
//  ApplicationColors.swift
//  CharSheet
//
//  Created by Yuri on 20/04/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit
import SwiftUI

extension UIColor {
    
    static var lightBlack: UIColor { return UIColor(displayP3Red: 22/255, green: 22/255, blue: 22/255, alpha: 1) }
    
    static var strongRed: UIColor { return UIColor(displayP3Red: 173.0/255.0, green: 39.0/255, blue: 25.0/255.0, alpha: 1) }
    
    static var mustardYellow: UIColor { return UIColor(displayP3Red: 232.0/255.0, green: 182.0/255.0, blue: 84.0/255, alpha: 1)}
    
    
}

extension Color {
    static var lightBlack: Color { return Color(.displayP3, red: 22/255, green: 22/255, blue: 22/255, opacity: 1) }

    static var strongRed: Color { return Color(.displayP3, red: 173.0/255.0, green: 39.0/255, blue: 25.0/255.0, opacity: 1) }

    static var mustardYellow: Color { return Color(.displayP3, red: 232.0/255.0, green: 182.0/255.0, blue: 84.0/255, opacity: 1)}
}
