//
//  TabBarView.swift
//  runningLog (iOS)
//
//  Created by Abdullah Ridwan on 7/4/21.
// Main Incoming Page

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Text("Jack")
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "square")
                }
            Text("Jill")
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
        .accentColor(.red)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
