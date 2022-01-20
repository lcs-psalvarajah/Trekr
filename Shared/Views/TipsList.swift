//
//  TipsList.swift
//  Trekr
//
//  Created by Salvarajah, Prajina on 2022-01-19.
//

import SwiftUI

struct TipsList: View {
    

    
    // TipStore is a reference type
    // It's created by this view
    // It's a source of truth, not a derived value
    // So, use @StateObject
    // Establishes an initial connection to the view model for tips
    @StateObject var dataStore = TipStore()
    
    var body: some View {
        List(dataStore.tips, id: \.text, children: \.children ) { tip in
            
            // if there are children on this particular tip...
            if tip.children != nil  {
                Label(tip.text, systemImage: "quote.bubble")
            } else {
                
                Text(tip.text)
            }
            
        }
        .navigationTitle("Tips")
        
    }
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        TipsList()
    }
}
