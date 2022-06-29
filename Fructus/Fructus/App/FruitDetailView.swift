//
//  FruitDetailView.swift
//  Fructus
//
//  Created by user on 23/06/22.
//

import SwiftUI

struct FruitDetailView: View {
    
    let fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //Header
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    //Title
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    //Headline
                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    FruitNutrientsView(fruit: fruit)
                    
                    //Subheading
                    Text("Learn More About \(fruit.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    //Description
                    Text(fruit.description)
                        .multilineTextAlignment(.leading)
                    
                    //Link
                    SourceLinkView()
                        .padding(.top, 20)
                        .padding(.bottom, 40)
            
                } //VStack
                .padding(.horizontal, 20)
                .frame(maxWidth: 420, alignment: .center)
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            }//: ScrollView
            .ignoresSafeArea(edges: .top)
        } //: NavigationView
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
