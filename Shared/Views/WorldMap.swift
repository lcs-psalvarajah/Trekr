//
//  WorldMap.swift
//  Trekr
//
//  Created by Salvarajah, Prajina on 2022-01-19.
//
import MapKit
import SwiftUI

struct WorldMap: View {
    
    //Get a reference to the location store
    // This is a derived value passed as a parameter
    // So, ObservedObject
    
    @ObservedObject var store: LocationStore
    
    //Centre on LCS, wide enough to show most of North America
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.43922, longitude: -78.26571),
                                           span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        
        Map(coordinateRegion: $region, annotationItems: store.places) { location in
            
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                
                Image(systemName: location.country)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 80, height: 40)
                    .shadow(radius: 3)
            }
            
        }
            .navigationTitle("Map")
        
    }
}

struct WorldMap_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        WorldMap(store: testStore)
        }
    }
}
