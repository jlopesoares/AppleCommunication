//
//  VoiceMailMessage.swift
//  AppleCommunication
//
//  Created by João Pedro Soares on 16/08/2023.
//

import Foundation

struct VoiceMailMessage: Identifiable, Hashable {
    let id = UUID()
    let contact: Contact
    var date: String
    
    static var dummyVoiceMailMessages: [VoiceMailMessage] {
        let contacts = Contact.dummyContacts
        return [.init(contact: contacts.randomElement()!, date: "June 29, 2024 at 9:41 AM"),
                .init(contact: contacts.randomElement()!, date: "June 29, 2024 at 9:41 AM")]
    }
}
