//
//  FacetimeMessageView.swift
//  AppleCommunication
//
//  Created by João Pedro Soares on 13/08/2023.
//

import SwiftUI

struct FacetimeMessageView: View {
    
    let message: FaceTimeMessage
    
    var body: some View {
        
        Image(message.thumbnail)
            .resizable()
            .frame(width: 90, height: 195)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(16)
            .padding(.bottom, 24)
            .scaledToFill()
            .blur(radius: 2)
            .overlay {
                Button {
                    
                } label: {
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .frame(width: 36, height: 36)
                        .foregroundColor(.white)
                }
                
                VStack(spacing: 8) {
                    ContactAvatarView(contact: message.contact)
                        .frame(width: 40, height: 40)
                    Text(message.contact.name)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                .offset(y: 90)
            }
    }
}

struct FacetimeMessageView_Previews: PreviewProvider {
    static var previews: some View {
        FacetimeMessageView(message: FaceTimeMessage.dummyFaceTimeMessages.randomElement()!)
    }
}
