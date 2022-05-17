//
//  CharacteristicsSView.swift
//  CharSheet
//
//  Created by Yuri on 17/05/22.
//  Copyright © 2022 academy. All rights reserved.
//

import SwiftUI

struct CharacteristicSView: View {

    enum CharacterisViewStyle {
        case small
        case standart

        var attrFont: Font {
            switch self {
                case .small:
                    return Font.system(size: 20, weight: .medium)
                case .standart:
                    return Font.system(size: 32, weight: .medium)
            }
        }

        var attrNameFont: Font {
            switch self {
                case .small:
                    return Font.system(size: 10, weight: .light)
                case .standart:
                    return Font.system(size: 12, weight: .light)
            }
        }

        var padding: CGFloat {
            switch self {
                case .small:
                    return 5
                case .standart:
                    return 15
            }
        }
    }

    var attribute: String
    var attributeName: String
    var style: CharacterisViewStyle

    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("\(attribute)")
                .font(style.attrFont)
            Text(attributeName)
                .font(style.attrNameFont)
        }
        .frame(maxWidth: .infinity)
        .padding([.vertical], style.padding)
        .padding([.horizontal], 8)
        .border(Color.black, width: 1)
    }
}




struct CharacteristicsSView_Previews: PreviewProvider {
    static var previews: some View {
        CharacteristicSView(attribute: "21", attributeName: "FOR", style: .small)
    }
}
