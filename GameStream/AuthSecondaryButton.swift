//
//  AuthSecondaryButton.swift
//  GameStream
//
//  Created by Edwin Yovany on 31/03/24.
//

import SwiftUI

struct AuthSecondaryButton: View {
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
            .background(Color("SecondaryButtonColor"))
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}

#Preview {
    AuthSecondaryButton(title: "Facebook", action: {})
}
