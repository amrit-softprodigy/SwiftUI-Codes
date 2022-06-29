//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by user on 23/06/22.
//

import SwiftUI

struct FruitHeaderView: View {
    let fruit: Fruit
    var body: some View {
        ZStack {
            LinearGradient.init(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 6, x: 2, y: 3)
                .padding(.vertical, 20)
        }
        .frame(height: 440)
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 440))
    }
}
