//
//  LifePointsSView.swift
//  CharSheet
//
//  Created by Yuri on 17/05/22.
//  Copyright © 2022 academy. All rights reserved.
//

import SwiftUI

struct LifePointsSView: View {
    var body: some View {
        HStack(spacing: 10) {
            Text("PV")
                .font(.system(size: 18, weight: .bold))
            ProgressView(value: 0.75)
            Text("75")
                .font(.system(size: 18, weight: .bold))
        }
        .padding([.horizontal], 18)
        .padding([.vertical], 10)
    }
}

struct LifePointsSView_Previews: PreviewProvider {
    static var previews: some View {
        LifePointsSView()
    }
}
