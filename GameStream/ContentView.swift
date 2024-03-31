//
//  ContentView.swift
//  GameStream
//
//  Created by Edwin Yovany on 19/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Spacer()
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Image("AppLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .padding(.bottom, 48)
                Authentication()
            }
        }
    }
}

struct Authentication: View {
    @State var isSignIn = true
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("SIGN IN", action: { isSignIn = true })
                    .foregroundColor(isSignIn ? .white : .gray)
                Spacer()
                Button("SIGN UP", action: { isSignIn = false })
                    .foregroundColor(isSignIn ? .gray : .white)
                Spacer()
            }
            
            Spacer(minLength: 42)
            
            if(isSignIn) { SignInView() }
            else { SignUpView()  }
        }
    }
}
 
struct SignInView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                EmailField().padding(.bottom, 16 )
                PasswordField().padding(.bottom, 16)
                Text("Did you forget your password?")
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .foregroundStyle(Color("DarkCianColor"))
                    .padding(.bottom, 48)
                
                Button("SIGN IN", action: signIn)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10.0).stroke(Color("DarkCianColor"), lineWidth: 1.0).shadow(color: .white, radius: 6.0))
                    .padding(.bottom, 60)
                
                Text("Sign in with social networks")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity,  alignment: .center)
                    .padding(.bottom, 12)
                
                HStack {
                    Button("Facebook", action: {})
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("SecondaryButtonColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    Text("Twitter")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("SecondaryButtonColor"))
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                .frame(maxWidth: .infinity)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(24 )
        }
    }
}

func signIn() {
    print("Signing In..")
}

struct EmailField: View {
    @State var email = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Email").foregroundStyle(Color("DarkCianColor"))
            ZStack(alignment: .leading) {
                if (email.isEmpty) {
                    Text(verbatim: "example@gmail.com").font(.caption).foregroundStyle(Color("HintColor"))
                }
                TextField("", text: $email)
            }
            Divider().frame(height: 1).background(Color("DarkCianColor"))
        }
    }
}

struct PasswordField: View {
    @State var password = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text("Password").foregroundStyle(.white)
            ZStack(alignment: .leading) {
                if (password.isEmpty) {
                    Text("Writing your password").font(.caption).foregroundStyle(Color("HintColor"))
                }
                SecureField("", text: $password)
            }
            Divider().frame(height: 1).background(Color("DarkCianColor"))
        }
    }
}

struct SignUpView: View {
    var body: some View {
        Text("SignUP")
    }
}

#Preview("ContenView") {
    ContentView()
}
