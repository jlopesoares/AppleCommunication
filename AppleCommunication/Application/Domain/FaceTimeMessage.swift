//
//  FaceTimeMessage.swift
//  AppleCommunication
//
//  Created by João Pedro Soares on 13/08/2023.
//

import Foundation

struct FaceTimeMessage: Identifiable, Hashable {
    var id = UUID()
    var contact: Contact
    var thumbnail: String
    
    static var dummyFaceTimeMessages: [FaceTimeMessage] {
        let contacts = Contact.dummyContacts
        
        return [
            .init(contact: contacts.randomElement()!, thumbnail: "justin"),
            .init(contact: contacts.randomElement()!, thumbnail: "halley"),
            .init(contact: contacts.randomElement()!, thumbnail: "tania"),
            .init(contact: contacts.randomElement()!, thumbnail: "vivian"),
            .init(contact: contacts.randomElement()!, thumbnail: "arthur"),
        ]
    }
}
