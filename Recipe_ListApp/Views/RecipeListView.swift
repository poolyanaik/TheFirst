//
//  ContentView.swift
//  Recipe_ListApp
//
//  Created by Rakesh Kulla on 15/7/2023.
//

import SwiftUI

struct RecipeListView: View {
   @ObservedObject var model =  RecipeListModel()
    
    var body: some View {
        
        
        NavigationView {
            
            List(model.recipes){ recipe in
                NavigationLink {
                    RecipeDetailView(recipe: recipe)
                    
                } label: {
                    HStack(spacing:20){
                        Image(recipe.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50,height: 50,alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        
                        Text(recipe.name)
                        
                        
                    }
                    
                }

                   
                
                
            }.navigationTitle("All Recipes")
        }
        
                
            
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
