//
//  ContentView.swift
//  recipe
//
//  Created by Kaung Sett Naing on 12/10/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: RecipeModel
    var body: some View {
        NavigationStack{
            List(model.recipes) { recipe in
                NavigationLink {
                    RecipeDetail(recipe: recipe)
                     
                } label: {
                    HStack{
                        Image(recipe.image).resizable().scaledToFill().frame(width: 50, height: 50).clipped().cornerRadius(8)
                        Text(recipe.name)
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
