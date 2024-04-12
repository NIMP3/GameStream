//
//  HomeView.swift
//  GameStream
//
//  Created by Edwin Yovany on 11/04/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            VStack {
                Text("Home View").font(.system(size: 30, weight: .bold)).foregroundStyle(.white)
            }
        }.toolbar(.hidden, for: .navigationBar)
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}
