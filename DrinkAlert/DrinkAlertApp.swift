//
//  DrinkAlertApp.swift
//  DrinkAlert
//
//  Created by DOMINIC NDONDO on 8/28/22.
//

import SwiftUI
import AppCore
import ComposableArchitecture

@main
struct DrinkAlertApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: Store(
                    initialState: AppState(),
                    reducer: appReducer,
                    environment: AppEnvironment()
                )
            )
        }
    }
}
