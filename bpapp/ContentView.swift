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
            FeedView(posts: [
                Post(username: "_mmapp", imgURL: "", desc: "Hello!"),
                Post(username: "brimanella", imgURL: "", desc: "Hello!"),
                Post(username: "JK", imgURL: "", desc: "Hello!")

            ])
                .tabItem {
                    Label("Feed", systemImage: "house")
                }
            Text("Post")
                .tabItem {
                    Label("Post", systemImage: "camera")
                }
            Text("Profile")
                .tabItem {
                    Label("Profile", systemImage: "person")
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
