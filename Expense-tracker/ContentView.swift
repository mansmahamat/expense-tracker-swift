//
//  ContentView.swift
//  Expense-tracker
//
//  Created by Mansour Mahamat-salle on 09/04/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    //active tab
    @State private var activeTab: Tab = .recents
    var body: some View {
        TabView(selection: $activeTab ){
            Text("Recents")
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent}
            
            Text("Search")
                .tag(Tab.search)
                .tabItem { Tab.search.tabContent}
            
            Text("Charts")
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContent}
            
            Text("Settings")
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContent}
        }
        .sheet(isPresented: $isFirstTime, content: {
            IntroScreen()
                .interactiveDismissDisabled()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
