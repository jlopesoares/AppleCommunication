//
//  InboxView.swift
//  AppleCommunication
//
//  Created by João Pedro Soares on 13/08/2023.
//

import SwiftUI

struct InboxView: View {
    
    let faceTimeMessages = FaceTimeMessage.dummyFaceTimeMessages + FaceTimeMessage.dummyFaceTimeMessages
    let voiceMailMessages = VoiceMailMessage.dummyVoiceMailMessages

    @State var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    
                    Header(title: "FaceTime Messages")
                        .padding(.leading, 8)
                    
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 12) {
                            ForEach(faceTimeMessages) { message in
                                FacetimeMessageView(message: faceTimeMessages.randomElement()!)
                                    .frame(width: 90, height: 240)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Header(title: "VoiceMail")
                        .padding(.leading, 8)
                        .padding(.vertical, 12)
                    
                    Divider()
                    
                    LazyVStack {
                        ForEach(voiceMailMessages) { message in
                            VoiceMailMessageView(voiceMailMessage: message)
                            Divider()
                        }
                    }
                }
            }
            
            .navigationTitle("Inbox")
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $searchText)
            
            Spacer()
        }
    }
}
struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
