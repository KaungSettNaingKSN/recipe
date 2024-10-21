//
//  DataService.swift
//  recipe
//
//  Created by Kaung Sett Naing on 12/10/2024.
//

import Foundation

class DataService{
    func getData() -> [Recipe] {
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do{
                let recipes = try decoder.decode([Recipe].self, from: data)
                for recipe in recipes{
                    recipe.id = UUID()
                    for i in recipe.ingredients{
                        i.id = UUID()
                    }
                }
                return recipes
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
            
        }
        return [Recipe]()
    }
}
