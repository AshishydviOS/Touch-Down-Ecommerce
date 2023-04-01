//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Ashish Yadav on 19/05/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
