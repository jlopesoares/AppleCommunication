//
//  Contact.swift
//  AppleCommunication
//
//  Created by João Pedro Soares on 12/08/2023.
//

import Foundation

struct Contact: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let image: String
    let backgroundColor: String
    let phoneNumber: String
    let email: String
    let isFavourite: Bool
    
    static var dummyContacts: [Contact] {
        [
            Contact(name: "Cynthia", image: Contact.getRandomMemoji, backgroundColor: Contact.getRandomColor, phoneNumber: "123", email: "", isFavourite: true),
            Contact(name: "Vivian", image: Contact.getRandomMemoji, backgroundColor: Contact.getRandomColor, phoneNumber: "123", email: "", isFavourite: true),
            Contact(name: "Justin", image: Contact.getRandomMemoji, backgroundColor: Contact.getRandomColor, phoneNumber: "123", email: "", isFavourite: true),
            Contact(name: "Nico", image: Contact.getRandomMemoji, backgroundColor: Contact.getRandomColor, phoneNumber: "123", email: "", isFavourite: true),
            Contact(name: "Haley", image: Contact.getRandomMemoji, backgroundColor: Contact.getRandomColor, phoneNumber: "123", email: "", isFavourite: true),
            Contact(name: "Kristina", image: Contact.getRandomMemoji, backgroundColor: Contact.getRandomColor, phoneNumber: "123", email: "", isFavourite: true),
            Contact(name: "Tania", image: Contact.getRandomMemoji, backgroundColor: Contact.getRandomColor, phoneNumber: "123", email: "", isFavourite: true),
            Contact(name: "Melody", image: Contact.getRandomMemoji, backgroundColor: Contact.getRandomColor, phoneNumber: "123", email: "", isFavourite: true),
            Contact(name: "Kevin", image: Contact.getRandomMemoji, backgroundColor: Contact.getRandomColor, phoneNumber: "123", email: "", isFavourite: true),
        ]
    }
    
    static var getRandomMemoji: String {
        "\(Int.random(in: 1...8))"
    }
    
    static var getRandomColor: String {
        "Color\(Int.random(in: 1...4))"
    }
}
