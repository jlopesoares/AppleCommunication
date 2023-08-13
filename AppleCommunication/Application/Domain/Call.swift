//
//  Call.swift
//  AppleCommunication
//
//  Created by João Pedro Soares on 12/08/2023.
//

import Foundation

enum CallType: CustomStringConvertible {
    case missedRegularCall,
         faceTimeCall
    
    var description: String {
        switch self {
        case .missedRegularCall:
            return "Missed Call"
        case .faceTimeCall:
            return "FaceTime Video"
        }
    }
    
    var missedOrRejected: Bool {
        self == .missedRegularCall
    }
}

struct Call: Identifiable, Hashable {
    let id = UUID()
    let type: CallType
    let time: String
    var contact: Contact
    
    static func == (lhs: Call, rhs: Call) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static var dummyCalls: [Call] {
        [.init(type: .faceTimeCall, time: "9:30 AM", contact: Contact(name: "Arthur", image: "1", backgroundColor: "Color1", phoneNumber: "", email: "", isFavourite: false)),
         .init(type: .missedRegularCall, time: "8:00 AM", contact: Contact(name: "Selena", image: "2", backgroundColor: "Color2", phoneNumber: "", email: "", isFavourite: false))]
    }
}
