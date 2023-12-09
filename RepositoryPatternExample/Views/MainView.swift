//
//  MainView.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/2/23.
//

import SwiftUI

struct MainView: View {

    var body: some View {
        TabView {
            
            CallsView().tabItem({
                Label("Calls", systemImage: "phone")
            })
            
            ContactView().tabItem {
                Label("Contacts", systemImage: "person.crop.circle")
            }
        }

    }
}

#Preview {
    MainView()
}
