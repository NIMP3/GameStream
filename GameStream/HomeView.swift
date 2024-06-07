//
//  HomeView.swift
//  GameStream
//
//  Created by Edwin Yovany on 11/04/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchText = ""
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            VStack {
                Image("AppLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                        .padding(.horizontal, 11.0)
                        .padding(.bottom, 12.0)
                
                HStack {
                    Button(action: search, label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(searchText.isEmpty ? Color(.yellow) : Color("DarkCianColor"))
                    })

                    ZStack {
                        if searchText.isEmpty {
                            Text("Search a video")
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                .foregroundColor(Color.yellow)
                        }
                        TextField("", text: $searchText)
                            .foregroundColor(Color("DarkCianColor"))
                    }
                }
                .padding([.top, .leading, .bottom], 18.0)
                .background(Color("SecondaryButtonColor"))
                .clipShape(Capsule())
            }
            .padding(.horizontal, 18.0)
        }.toolbar(.hidden, for: .navigationBar)
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
    }
    
    func search() {
        print("User is searching \(searchText)")
    }
}

#Preview {
    HomeView()
}
