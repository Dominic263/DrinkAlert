//
//  ContentView.swift
//  DrinkAlert
//
//  Created by DOMINIC NDONDO on 8/28/22.
//
import SwiftUI
import ComposableArchitecture
import AppCore

public struct ContentView: View {
    public var store: Store<AppState, AppState.Action>
    
    public init(store: Store<AppState, AppState.Action>) {
        self.store = store
    }
    
    public var body: some View {
        WithViewStore(store) { viewstore in
            Text("Main App")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            store: Store(
                initialState: AppState(),
                reducer: appReducer,
                environment: AppEnvironment()
            )
        )
    }
}
