//
//  ContactsViewController.swift
//  PersonsList
//
//  Created by mac on 27.02.2022.
//

import UIKit

class ContactsViewController: UITableViewController {

    
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.title = "Person"
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        

        return cell
    }
    

    
    // MARK: - Navigation

  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let DetailVC = segue.destination as? DetailViewController else { return }
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        DetailVC.person = persons[indexPath.row]
    }
   

}
