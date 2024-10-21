//
//  HomeView.swift
//  recipe
//
//  Created by Kaung Sett Naing on 20/10/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                VStack{
                    Image(systemName: "star.fill")
                    Text("Fav")
                }
            }
            ContentView().tabItem{
                VStack{
                    Image(systemName: "list.bullet")
                    Text("Fav")
                }
            }
        }.environmentObject(RecipeModel())
    }
}

#Preview {
    HomeView()
}
