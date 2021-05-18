//
//  You_WinApp.swift
//  You Win
//
//  Created by Александра on 17.05.2021.
//

import SwiftUI

@main
struct You_WinApp: App {
    let winVM = WinVM()
    var body: some Scene {
        WindowGroup {
            ContentView(winVM: winVM)
        }
    }
}
