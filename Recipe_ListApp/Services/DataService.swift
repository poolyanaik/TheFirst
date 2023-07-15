//
//  DataService.swift
//  Recipe_ListApp
//
//  Created by Rakesh Kulla on 15/7/2023.
//

import Foundation
class DataService{
    
    func getLocalData()->[Recipe]{
        
        //parse json file
        
                                                                            //get path to the file
        let path = Bundle.main.path(forResource: "recipes", ofType: "json")
                                                                            //check nill with guard statement
        guard path != nil else { return [Recipe]() }
            
                                                                            //set url to the path file
        let url = URL(fileURLWithPath: path!)
        //create a data obj
        do{
            let data = try Data(contentsOf: url)
                //decode the data with a json decoder
            let decoder = JSONDecoder()
            do{
               var recipesData = try decoder.decode([Recipe].self, from: data)
                for r in recipesData{
                    r.id = UUID()
                  }
                return recipesData
                
            }catch{print("error while decodind data",error)}
            //add unique id's
            
            // return the recipes

            
        }catch{
            print("error while getting data",error)
            
           }
    return [Recipe]()
    }
    
    
        
        
       
        
    }

