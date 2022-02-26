//
//  ListViewController.swift
//  PersonsList
//
//  Created by mac on 25.02.2022.
//

import UIKit

class ListViewController: UITableViewController {

    var randomPersons = [Person.getPersons(), Person.getPersons(), Person.getPersons(), Person.getPersons(), Person.getPersons(), Person.getPersons(), Person.getPersons(), Person.getPersons(),]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Persons"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return randomPersons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
        
        let person = randomPersons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name) \(person.surname)"
        cell.contentConfiguration = content
        
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

   

    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        guard let detailVC = segue.destination as? DetailViewController else { return }
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = randomPersons[indexPath.row]
        detailVC.person = person
        
        
    }

}
