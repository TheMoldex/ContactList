//
//  DetailInfoViewController.swift
//  ContactList
//
//  Created by Денис Сташков on 2.11.2023.
//

import UIKit

class DetailInfoViewController: UIViewController {

    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var titleNC: UINavigationItem!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumber.text = "Phone " + person.phone
        email.text = "Emal " + person.email
        titleNC.title = person.fullName
    }
}
