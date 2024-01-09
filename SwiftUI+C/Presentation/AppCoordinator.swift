//
//  AppCoordinator.swift
//  SwiftUI+C
//
//  Created by Michael Mavris on 05/01/2024.
//

import SwiftUI

final class AppCoordinator: ObservableObject {
    @Published var path: NavigationPath

    init(path: NavigationPath) {
        self.path = path
    }

    @ViewBuilder
    func view() -> some View {
        MainView()
    }
}
