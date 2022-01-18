//
//  TrekrApp.swift
//  Shared
//
//  Created by Salvarajah, Prajina on 2022-01-18.
//

import SwiftUI

@main
struct TrekrApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationDetails(location: Location.example)
            }
        }
    }
}
