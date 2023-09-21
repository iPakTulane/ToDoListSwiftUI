//
//  User.swift
//  ToDoListSwiftUI
//
//  Created by iPak Tulane on 25/08/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval //when user joined the app
}
