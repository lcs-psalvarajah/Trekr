//
//  TrekrApp.swift
//  Shared
//
//  Created by Salvarajah, Prajina on 2022-01-18.
//

import SwiftUI

@main
struct TrekrApp: App {
    
    @StateObject var store = LocationStore()
    
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    LocationsList(store: store)
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Locations")
                }
                
                NavigationView {
                    WorldMap(store: store)
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                
                NavigationView {
                    TipsList()
                }
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
            }
        }
    }
}
