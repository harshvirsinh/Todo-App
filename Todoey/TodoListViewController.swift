//
//  ViewController.swift
//  Todoey
//
//  Created by Harshvirsinh Parmar on 23/10/21.
//

import UIKit

class TodoListViewController: UITableViewController {
    let itemArray = ["I am Veer","I am harsh","I am Parmar"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print(itemArray[indexPath.row])
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }else{
           tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)

    }
    
//    @IBAction func addButton(_ sender: UIBarButtonItem) {
//        let alert = UIAlertController(title: "Add New Todoey", message: "", preferredStyle: .alert)
//        
//        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
//            <#code#>
//        }
//    }
    
}



