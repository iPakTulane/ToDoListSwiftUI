//
//  LoginViewViewModel.swift
//  ToDoListSwiftUI
//
//  Created by iPak Tulane on 25/08/23.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, //trimmingCharacters = will trigger user taps a whitespace button
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {

            errorMessage = "Please fill in all fields."
            return // return = stop
        }
        //Standard writing: email@foo.com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return
        }
    }
    
    func validate() {
        
    }
    
}




