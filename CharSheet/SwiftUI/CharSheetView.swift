//
//  CharSheetView.swift
//  CharSheet
//
//  Created by Yuri on 16/05/22.
//  Copyright © 2022 academy. All rights reserved.
//

import SwiftUI

struct CharSheetView: View {
    var body: some View {
        ZStack {
            Color.mustardYellow
                .ignoresSafeArea()
            VStack(spacing: 10) {
                CharIllustrationView()
                BattleInfoView()
                LifePointsSView()
                CharAttributeView()
            }
            .padding([.bottom], 65)
        }
        .navigationTitle("Xilyra Zhong")
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct CharSheetView_Previews: PreviewProvider {
    static var previews: some View {
        CharSheetView()
    }
}
