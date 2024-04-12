//
//  HomeView.swift
//  GameStream
//
//  Created by Edwin Yovany on 11/04/24.
//

import SwiftUI

struct MenuView: View {
    @State var selectedTab: Int = 2
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Profile View").font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }.tag(0)
            Text("Game View").font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Games")
                }.tag(1)
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(2)
            Text("Favorites View").font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }.tag(3)
        }
        .onAppear() {
            UITabBar.appearance().barTintColor = UIColor(.white)
            UITabBar.appearance().unselectedItemTintColor = UIColor(.gray)
            UITabBar.appearance().backgroundColor = UIColor(Color("BottomBarColor"))
            UITabBar.appearance().isTranslucent = true
        }
    }
}

#Preview {
    MenuView()
}
