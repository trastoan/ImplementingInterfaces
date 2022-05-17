//
//  BattleInfoView.swift
//  CharSheet
//
//  Created by Yuri on 17/05/22.
//  Copyright © 2022 academy. All rights reserved.
//

import SwiftUI

struct BattleInfoView: View {
    let rows = Array(repeating: GridItem(spacing: 30), count: 3)
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Paladin 16")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.strongRed)
                .padding([.leading], 16)
            LazyVGrid(columns: rows) {
                CharacteristicSView(attribute: "19", attributeName: "CA", style: .standart)
                CharacteristicSView(attribute: "+4", attributeName: "Inciativa", style: .standart)
                CharacteristicSView(attribute: "15", attributeName: "Desloc.", style: .standart)
            }
            .padding([.leading, .trailing], 48)
        }
    }
}

struct BattleInfoView_Previews: PreviewProvider {
    static var previews: some View {
        BattleInfoView()
    }
}
