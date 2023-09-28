//
//  ToDoListItem.swift
//  ToDoListSwiftUI
//
//  Created by iPak Tulane on 25/08/23.
//

import Foundation

struct ToDoListITem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
    
}
