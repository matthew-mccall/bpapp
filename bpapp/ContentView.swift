//
//  ContentView.swift
//  bpapp
//
//  Created by Matthew McCall on 2/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Feed")
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Post")
                .tabItem {
                    Image(systemName: "camera")
                }
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = .white  }
        .accentColor(.blue)
    }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
