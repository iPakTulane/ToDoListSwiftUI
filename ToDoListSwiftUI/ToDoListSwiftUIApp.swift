//
//  ToDoListSwiftUIApp.swift
//  ToDoListSwiftUI
//
//  Created by iPak Tulane on 25/08/23.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListSwiftUIApp: App {

    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
