//
//  AuthPrimaryButton.swift
//  GameStream
//
//  Created by Edwin Yovany on 31/03/24.
//

import SwiftUI

struct AuthPrimaryButton: View {
    let title: String
    let action: () -> Void
    
    init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    var body: some View {
        Button(title, action: action)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color("DarkCianColor"), lineWidth: 1.5).shadow(color: .white, radius: 8.0))
    }
}

#Preview {
    AuthPrimaryButton(title: "SIGN IN") {}
}
