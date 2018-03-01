//
//  ToDoItem.swift
//  ToDoListLSG
//
//  Created by Alumne on 1/3/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import Foundation

class ToDoItem {
    var name: String
    var completed: Bool
    var creationDate: Date
    var completionDate: Date?
    
    init(name: String) {
        self.name = name
        self.completed = false
        self.creationDate = Date()
    }
    
    func markAsCompleted() {
        self.completed = (completed ? false : true)
        if self.completed {
            self.completionDate = Date()
        } else {
            self.completionDate = nil
        }
    }
}
