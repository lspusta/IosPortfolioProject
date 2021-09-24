//
//  PortfolioProjectApp.swift
//  PortfolioProject
//
//  Created by Lucas Spusta on 9/24/21.
//

import SwiftUI

@main
struct PortfolioProjectApp: App {
    @StateObject var dataController: DataController
    
    init() {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
