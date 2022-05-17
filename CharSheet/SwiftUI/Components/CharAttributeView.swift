//
//  CharAttributeView.swift
//  CharSheet
//
//  Created by Yuri on 17/05/22.
//  Copyright © 2022 academy. All rights reserved.
//

import SwiftUI

struct CharAttributeView: View {
    let rows = Array(repeating: GridItem(spacing: 8), count: 6)

    var body: some View {
        LazyVGrid(columns: rows) {
            CharacteristicSView(attribute: "+3", attributeName: "FOR", style: .small)
            CharacteristicSView(attribute: "0", attributeName: "DES", style: .small)
            CharacteristicSView(attribute: "+1", attributeName: "CON", style: .small)
            CharacteristicSView(attribute: "+1", attributeName: "SAB", style: .small)
            CharacteristicSView(attribute: "-1", attributeName: "INT", style: .small)
            CharacteristicSView(attribute: "+1", attributeName: "CAR", style: .small)
        }
        .padding([.horizontal], 18)
    }
}


struct CharAttributeView_Previews: PreviewProvider {
    static var previews: some View {
        CharAttributeView()
    }
}
