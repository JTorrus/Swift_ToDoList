//
//  ToDoListTableViewController.swift
//  ToDoListLSG
//
//  Created by Alumne on 1/3/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
    var toDoItemManager: ToDoItemManager = ToDoItemManager()
    var newItem: ToDoItem?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItemManager.items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath)
        
        let item: ToDoItem = toDoItemManager.items[indexPath.row]
        
        cell.textLabel?.text = item.name
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm"
        cell.detailTextLabel?.text = dateFormatter.string(from: item.creationDate)
        
        if item.completed {
            cell.accessoryType = UITableViewCellAccessoryType.checkmark
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.none
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            toDoItemManager.deleteItem(index: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        toDoItemManager.markItemAsCompleted(itemIndex: indexPath.row)
        tableView.reloadData()
    }
    
    @IBAction func goBack(segue: UIStoryboardSegue) {
        if let newItemAdded = newItem {
            self.newItem = nil
            toDoItemManager.addItem(item: newItemAdded)
            tableView.reloadData()
        }
    }
    
    
}
