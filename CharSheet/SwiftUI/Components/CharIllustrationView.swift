//
//  CharIllustrationView.swift
//  CharSheet
//
//  Created by Yuri on 17/05/22.
//  Copyright © 2022 academy. All rights reserved.
//

import SwiftUI

struct CharIllustrationView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.black)
                .padding([.leading, .trailing], 30)
            Image("example")
                .resizable()
                .scaledToFit()
                .scaleEffect(1.2)
        }
    }
}

struct CharIllustrationView_Previews: PreviewProvider {
    static var previews: some View {
        CharIllustrationView()
    }
}
