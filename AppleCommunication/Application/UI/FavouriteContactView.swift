//
//  FavouriteContactView.swift
//  AppleCommunication
//
//  Created by João Pedro Soares on 13/08/2023.
//

import SwiftUI

struct ContactAvatarView: View {
    let contact: Contact
    
    var body: some View {
        Circle()
            .fill(Color("Color\(Int.random(in: 1...4))"))
            .overlay {
                Image(contact.image)
                    .resizable()
            }
    }
}

struct FavouriteContactView: View {
    let contact: Contact
    
    var body: some View {
        VStack{
            ContactAvatarView(contact: contact)
            Text(contact.name)
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}

struct FavouriteContactView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteContactView(contact: Contact(name: "Cynthia", image: "2", backgroundColor: "", phoneNumber: "", email: "", isFavourite: true))
            .previewLayout(.fixed(width: 130, height: 130))
    }
}
