//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Денис Сташков on 2.11.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVC()
    }
    private func setupVC() {
        guard let personsListVC = viewControllers?.first as? PersonalsTableViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionTableViewController else { return }
        
        let persons = Person.getContactList()
        personsListVC.persons = persons
        sectionVC.persons = persons
    }
}
