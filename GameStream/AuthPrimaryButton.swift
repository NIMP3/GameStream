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
        Button(title, action: signIn)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color("DarkCianColor"), lineWidth: 1.0).shadow(color: .white, radius: 6.0))
    }
}

#Preview {
    AuthPrimaryButton(title: "SIGN IN") {}
}
