//
//  LoginView.swift
//  ToDoListSwiftUI
//
//  Created by iPak Tulane on 25/08/23.
//

import SwiftUI

struct LoginView: View {
  
    @StateObject var viewModel = LoginViewViewModel()
    
//    @State var email = ""
//    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink)
                
                // Login form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                    //                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                    //                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .textFieldStyle(DefaultTextFieldStyle())

                    TLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        // Attempt log in
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                
                // Create account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account",
                                   destination: RegisterView()) //Once it tapped, user goes to RegisterView
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
