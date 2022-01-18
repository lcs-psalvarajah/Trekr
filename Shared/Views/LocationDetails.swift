//
//  LocationDetails.swift
//  Trekr
//
//  Created by Salvarajah, Prajina on 2022-01-18.
//

import SwiftUI

struct LocationDetails: View {
    
    // The location to show details abput
    // A copy of an instance of a structure will be provided in this view
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
        }
        .navigationTitle(location.name)
    }
}




struct LocationDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetails(location: Location.example)
        }
    }
}
