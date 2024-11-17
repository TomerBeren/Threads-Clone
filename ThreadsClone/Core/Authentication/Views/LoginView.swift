//
//  LoginView.swift
//  ThreadsClone
//
//  Created by Tomer Berenstein on 16/11/2024.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationStack {
            
            Spacer()
            
            VStack{
                Image("threads-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
            }
            
            Spacer()
            
            VStack{
                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            NavigationLink {
                Text("Forgot password")
            } label: {
                Text("Forgot password?")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.trailing,28)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
            }
            .padding(.vertical, 10)
            
            Button {
                
            } label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            
            Spacer()
            
            Divider()
            NavigationLink{
                Text("Registration")
            } label: {
                HStack{
                    Text("Don't have an account?")

                    Text("Sign up").fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }.padding(.top, 16)
                
        }
    }
}

#Preview {
    LoginView()
}
