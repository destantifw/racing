//
//  racingApp.swift
//  racing
//
//  Created by destanti on 31/07/22.
//

import SwiftUI

@main
struct racingApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                DefaultPageNav.init(inBody: AnyView(
                    ContentView()
                ), hideBack: true)
            }
        }
    }
}
