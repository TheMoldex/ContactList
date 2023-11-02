//
//  Model.swift
//  ContactList
//
//  Created by Денис Сташков on 1.11.2023.
//

import Foundation


struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    var fullName: String {
        "\(name) \(surname)"
    }
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        let dataStore = DataStore.shared
        
        let name = dataStore.names.shuffled()
        let surname = dataStore.surnames.shuffled()
        let phone = dataStore.phones.shuffled()
        let email = dataStore.emails.shuffled()
        
        let iterationCount = min(name.count,
                                 surname.count
                                 ,phone.count,
                                 email.count)
        for index in 0..<iterationCount {
            let person = Person(
                name: name[index],
                surname: surname[index],
                phone: phone[index],
                email: email[index]
            )
            persons.append(person)
        }
        return persons
    }
}
