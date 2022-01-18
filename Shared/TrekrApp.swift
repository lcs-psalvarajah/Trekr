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
            NavigationView {
                LocationsList(store: store)
            }
        }
    }
}
