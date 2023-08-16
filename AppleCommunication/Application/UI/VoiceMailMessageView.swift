//
//  VoiceMailMessageView.swift
//  AppleCommunication
//
//  Created by João Pedro Soares on 16/08/2023.
//

import SwiftUI

struct VoiceMailMessageView: View {
    
    let voiceMailMessage: VoiceMailMessage
    @State var selectedMessage: Bool = false
    
    var body: some View {
        HStack(alignment: .top) {
            Button {
                selectedMessage.toggle()
            } label: {
                if selectedMessage {
                    Circle()
                        .foregroundColor(.green)
                        .frame(width: 16, height: 16)
                        .padding(.all, 8)
                } else {
                    Circle()
                        .stroke()
                        .foregroundColor(.green)
                        .frame(width: 16, height: 16)
                        .padding(.all, 8)
                }
            }

            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 16.0){
                    Text(voiceMailMessage.contact.name)
                        .multilineTextAlignment(.leading)
                        .font(.headline)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                    .tint(.green)
                    
                    Button {} label: {
                        Image(systemName: "info.circle")
                    }.tint(.green)
                }
                
                Text("iPhone")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.gray)
                
                Text(voiceMailMessage.date)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.gray)
                
                VStack{
                    ProgressView(value: 30, total: 100)
                        .progressViewStyle(.linear)
                        .padding(.vertical, 8)
                        .tint(.green)
                    HStack {
                        Text("0:21")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.gray)
                        Spacer()
                        Text("-0:54")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.gray)
                    }
                }
             
                HStack {
                    Button {
                        
                    } label: {
                        ZStack {
                            Circle()
                                .foregroundColor(.gray).opacity(0.15)
                            
                            Image(systemName: "speaker.wave.2.fill")
                                .resizable()
                                .foregroundColor(.green)
                                .frame(width: 16, height: 16)
                        }
                            
                    }
                    .frame(width: 36, height: 36)
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "phone.circle.fill")
                            .resizable()
                            .tint(.green)
                    }
                    .frame(width: 36, height: 36)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "trash.circle.fill")
                            .resizable()
                            .tint(.red)
                    }
                    .frame(width: 36, height: 36)
                    
                }
                .padding(.top, 8)
            }
        }
        .padding(.horizontal)
    }
}

struct VoiceMailMessageView_Previews: PreviewProvider {
    static var previews: some View {
        VoiceMailMessageView(voiceMailMessage: VoiceMailMessage(contact: Contact.init(name: "Arthur", image: "", backgroundColor: "", phoneNumber: "", email: "", isFavourite: false), date: "June 29, 2024 at 9:41 AM"))
    }
}
