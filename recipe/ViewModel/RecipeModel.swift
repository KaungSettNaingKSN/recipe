//
//  RecipeModel.swift
//  recipe
//
//  Created by Kaung Sett Naing on 12/10/2024.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    init() {
        let service = DataService()
        self.recipes = service.getData()
    }
}
