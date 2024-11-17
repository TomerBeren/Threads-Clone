//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Tomer Berenstein on 16/11/2024.
//

import SwiftUI

struct RegistrationView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var fullname: String = ""
    @State var username: String = ""
    
    
    var body: some View {
        Spacer()
        
        VStack{
            Image("threads-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
        }
        
        VStack{
            TextField("Enter your email", text: $email)
                .modifier(ThreadsTextFieldModifier())
            
            SecureField("Enter your password", text: $password)
                .modifier(ThreadsTextFieldModifier())
            
            TextField("Enter your full name", text: $fullname)
                .modifier(ThreadsTextFieldModifier())

            TextField("Enter your username", text: $username)
                .modifier(ThreadsTextFieldModifier())
        }
        
        Button  {
            
        } label: {
            Text("Sign Up")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 352, height: 44)
                .background(.black)
                .cornerRadius(8)
        }.padding(.vertical)
        
        Spacer()
        
        Divider()
        
        Button  {
            
        } label: {
            HStack{
                Text("Allready have an account?")

                Text("Sign in").fontWeight(.semibold)
            }
            .foregroundColor(.black)
            .font(.footnote)
        }.padding(.top, 16)
    }
}

#Preview {
    RegistrationView()
}
