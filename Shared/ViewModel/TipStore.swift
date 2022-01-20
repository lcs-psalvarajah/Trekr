//
//  TipStore.swift
//  Trekr
//
//  Created by Salvarajah, Prajina on 2022-01-20.
//

import Foundation

// Holds the _state_ of of the tips data to be used in the app, so this belongs in the ViewModels group
class TipStore: ObservableObject {
    
    // This view creates has its own source of truth
    let tips: [Tip]
    
    // Initializer pulls tips data from JSON
    //Populates the array
    init() {
        
        // Get a pointer to the file
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        // Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        //Convert the data from the JSON into the array
        tips = try! JSONDecoder().decode([Tip].self , from: data)
        
    }
    
}

var testTipStore = TipStore()

