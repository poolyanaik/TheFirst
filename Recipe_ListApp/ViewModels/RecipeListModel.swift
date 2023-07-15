//
//  RecipeModel.swift
//  Recipe_ListApp
//
//  Created by Rakesh Kulla on 15/7/2023.
//

import Foundation
class RecipeListModel:ObservableObject{
   @Published var recipes = [Recipe]()
    
    init(){
       //create instance of dataService
       let service = DataService()
        recipes.self =  service.getLocalData()
        
    }
}
