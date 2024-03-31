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
    @State var isSignIn = false
    
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
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                AuthField(title: "Email",
                          isEmpty: email.isEmpty,
                          placeholder: "example@example.com") {
                    
                    TextField("", text: $email)
                }
                
                AuthField(title: "Password",
                          isEmpty: password.isEmpty,
                          placeholder: "Writing your password") {
                    
                    SecureField("", text: $password)
                }
            
                Text("Did you forget your password?")
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .foregroundStyle(Color("DarkCianColor"))
                    .padding(.bottom, 48)
                
                AuthPrimaryButton(title: "SIGN IN", action: signIn)
                    .padding(.bottom, 60)
                
                Text("Sign in with social networks")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity,  alignment: .center)
                    .padding(.bottom, 12)
                
                HStack {
                    AuthSecondaryButton(title: "Facebook") {
                        print("Sign in with Facebook")
                    }
                    AuthSecondaryButton(title: "Twitter") {
                        print("Sign in with Twitter")
                    }
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

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Text("Choosing a profile photo")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                Text("You can change or choose later")
                    .font(.footnote)
                    .foregroundStyle(.white)
                    .fontWeight(.light)
                    .padding(.bottom)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack {
                        Image("ProfileImage")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        Image(systemName: "camera")
                            .foregroundColor(.white)
                    }
                })
            }
            
            VStack(alignment: .leading) {
                AuthField(title: "Email",
                          isEmpty: email.isEmpty,
                          placeholder: "example@example.com") {
                    
                    TextField("", text: $email)
                }
                
                AuthField(title: "Password",
                          isEmpty: password.isEmpty,
                          placeholder: "Writing your password") {
                    
                    SecureField("", text: $password)
                }
                
                AuthField(title: "Confirm password",
                          isEmpty: password.isEmpty,
                          placeholder: "Writing your password again") {
                    
                    SecureField("", text: $confirmPassword)
                }.padding(.bottom, 12)
                
                AuthPrimaryButton(title: "SIGN UP", action: signUp)
                    .padding(.bottom, 60)
                
                Text("Sign up with social networks")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity,  alignment: .center)
                    .padding(.bottom, 12)
                
                HStack {
                    AuthSecondaryButton(title: "Facebook") {
                        print("Sign in with Facebook")
                    }
                    AuthSecondaryButton(title: "Twitter") {
                        print("Sign in with Twitter")
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(24 )
        }
    }
}

func signUp() {
    print("Signing up..")
}

#Preview("ContenView") {
    ContentView()
}
