//
//  AuthInput.swift
//  GameStream
//
//  Created by Edwin Yovany on 31/03/24.
//

import SwiftUI

struct AuthField<Content>: View where Content: View {
    let content: () -> Content
    let title: String
    let isEmpty: Bool
    let placeholder: String
    
    init(
        title: String,
        isEmpty: Bool,
        placeholder: String,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.content = content
        self.title = title
        self.isEmpty = isEmpty
        self.placeholder = placeholder
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(Color("DarkCianColor"))
            ZStack(alignment: .leading) {
                if (isEmpty) {
                    Text(verbatim: placeholder)
                        .font(.caption)
                        .foregroundStyle(Color("HintColor"))
                }
                content()
                    .foregroundStyle(.white)
            }
            Divider()
                .frame(height: 1)
                .background(Color("DarkCianColor"))
                .padding(.bottom)
        }
    }
}
