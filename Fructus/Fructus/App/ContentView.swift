//
//  ContentView.swift
//  Fructus
//
//  Created by user on 21/06/22.
//

import SwiftUI

struct ContentView: View {
    
    let fruits: [Fruit] = fruitsData
    @State private var isPresentedSettings = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink {
                        FruitDetailView(fruit: item)
                    } label: {
                        FruitRowView(fruit: item)
                    }
                }
                .padding(.vertical, 10)
            }
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isPresentedSettings = true
                } label: {
                    Image.init(systemName: "slider.horizontal.3")
                }
            }
            .sheet(isPresented: $isPresentedSettings) {
                SettingsView()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
