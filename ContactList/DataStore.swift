//
//  DataSource.swift
//  ContactList
//
//  Created by Денис Сташков on 2.11.2023.
//

import Foundation

class DataStore {
    static let shared = DataStore()
    let names = ["John",
                 "Michael",
                 "Sarah",
                 "Jennifer",
                 "David",
                 "Emily",
                 "Ryan",
                 "Jessica"]
    
    let surnames = ["Smith",
                    "Johnson",
                    "Davis",
                    "Brown",
                    "Wilson",
                    "Thompson",
                    "Taylor",
                    "Clark"]
    
    let emails = ["ohn.doe@example.com",
                  "mary.smith@gmail.com",
                  "sarah.jones@yahoo.com",
                  "bob.jenkins@outlook.com",
                  "emily.brown@hotmail.com",
                  "david.wilson@aol.com",
                  "lisa.white@icloud.com",
                  "kevin.anderson@protonmail.com"]
    
    let phones = ["723456",
                  "890123",
                  "567890",
                  "432109",
                  "654321",
                  "987654",
                  "210987",
                  "345678"]

}
