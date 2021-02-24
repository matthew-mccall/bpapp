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
                Post(username: "_mmapp", desc: "Hello"),
                Post(username: "brimanella", desc: "from"),
                Post(username: "JK", desc: "Nova")

            ])
                .tabItem {
                    Label("Feed", systemImage: "house")
                }
            SpacesView()
                .tabItem {
                    Label("Spaces", systemImage: "person.2")
                }
            NewPostView()
                .tabItem {
                    Label("Post", systemImage: "camera")
                }
            ProfileView()
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
