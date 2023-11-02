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
        guard let firstNC = viewControllers?.first as? UINavigationController else { return }
        guard let personsListVC = firstNC.topViewController as? PersonalsTableViewController else { return }
        guard let secondVC = viewControllers?.last as? UINavigationController else { return }
        guard let sectionVC = secondVC.topViewController as? SectionTableViewController else { return }
        
        let persons = Person.getContactList()
        personsListVC.persons = persons
        sectionVC.persons = persons
    }
}
