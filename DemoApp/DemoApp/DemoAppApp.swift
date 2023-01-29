//
//  DemoAppApp.swift
//  DemoApp
//
//  Created by Eidinger, Marco on 11/14/22.
//

import SwiftUI

@main
struct DemoAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        print("AppDelegate called")
        return true
    }
}
