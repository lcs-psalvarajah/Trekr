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
            HStack {
                
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()
                
            }
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack {
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
            }
            .padding(.horizontal)
            

            
            //Conditionally show the travel advisories
            if !location.advisory.isEmpty {
                
                Text(location.more)
                    .padding([.bottom, .horizontal])
                
                HStack {
                    Text("Advisory")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Text(location.advisory)
                    .padding([.bottom, .horizontal])
                
            } else {
                
                // Show only the locations "more" text with bttom padding included
                Text(location.more)
                    .padding([.bottom, .horizontal])
                
            }
            
        }
        .navigationTitle(location.name)
    }
}




struct LocationDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetails(location: testStore.places[0])
        }
    }
}
