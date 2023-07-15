//
//  RecipeDetailView.swift
//  Recipe_ListApp
//
//  Created by Rakesh Kulla on 15/7/2023.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe:Recipe
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading){
                Image(recipe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                VStack(alignment: .leading){
                    Text("Ingridients")
                        .font(.largeTitle)
                        .bold()
                    ForEach(recipe.ingredients,id:\.self){ ingredient in
                        
                        Text(">>     " + ingredient)
                            .font(.headline)
                            .padding(.bottom)
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.largeTitle)
                        .bold()
                    ForEach(0..<recipe.directions.count, id:\.self){ index in
                        
                        Text(String(index+1) + "  " + recipe.directions[index])
                            .font(.headline)
                            .padding(.bottom,5)
                        
                    }

                }
            }
        }.navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let modfel = RecipeListModel()
        RecipeDetailView(recipe: modfel.recipes[0])
    }
}
