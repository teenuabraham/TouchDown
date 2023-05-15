//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Teenu Abraham on 04/05/23.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
