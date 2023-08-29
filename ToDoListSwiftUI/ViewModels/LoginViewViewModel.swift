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
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, //trimmingCharacters = will trigger user taps a whitespace button
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {

            errorMessage = "Fill in all fields"

            return // return = stop
        }
    }
    
    func validate() {
        
    }
    
}




