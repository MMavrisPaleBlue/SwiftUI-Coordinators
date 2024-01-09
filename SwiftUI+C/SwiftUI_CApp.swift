//
//  SwiftUI_CApp.swift
//  SwiftUI+C
//
//  Created by Michael Mavris on 05/01/2024.
//

import SwiftUI

@main
struct SwiftUI_CApp: App {
    @StateObject private var appCoordinator = AppCoordinator(path: NavigationPath())

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $appCoordinator.path) {
                appCoordinator.view()
                    .navigationDestination(
                        for: AuthenticationCoordinator.self
                    ) { coordinator in
                        coordinator.view()
                    }
            }
            .environmentObject(appCoordinator)
        }
    }
}
