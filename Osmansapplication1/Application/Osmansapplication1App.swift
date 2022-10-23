//
//  Osmansapplication1App.swift
//  Osmansapplication1

import SwiftUI

@main
struct Osmansapplication1App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            KtphaneView()
        }
    }
}
