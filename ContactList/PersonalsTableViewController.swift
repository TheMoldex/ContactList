//
//  PersonalsTableViewController.swift
//  ContactList
//
//  Created by Денис Сташков on 1.11.2023.
//

import UIKit

class PersonalsTableViewController: UITableViewController {

    var persons: [Person]!
   
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? DetailInfoViewController else { return }
            detailVC.person = persons[indexPath.row]
        }
    }

}
extension PersonalsTableViewController {
    
    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personalInfo", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }

}

//MARK: - UITableViewDelegate
extension PersonalsTableViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        65
    }
}
