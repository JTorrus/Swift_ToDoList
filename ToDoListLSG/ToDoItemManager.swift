//
//  ToDoItemManager.swift
//  ToDoListLSG
//
//  Created by Alumne on 1/3/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import Foundation

class ToDoItemManager {
    var items: [ToDoItem] = [ToDoItem]()
    
    func addItem(item: ToDoItem) {
        self.items.append(item)
    }
    
    func deleteItem(index: Int) {
        self.items.remove(at: index)
    }
    
    func markItemAsCompleted(itemIndex: Int) {
        self.items[itemIndex].markAsCompleted()
    }
}
