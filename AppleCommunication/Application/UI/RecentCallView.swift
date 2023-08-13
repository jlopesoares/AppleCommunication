//
//  RecentCallView.swift
//  AppleCommunication
//
//  Created by João Pedro Soares on 13/08/2023.
//

import SwiftUI

struct RecentCallView: View {
    
    let call: Call
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 8) {
                Image(systemName: call.type == .faceTimeCall ? "arrow.up.right.video.fill" : "phone.arrow.down.left.fill")
                    .foregroundColor(call.type.missedOrRejected ? .red : .gray)
                VStack(alignment: .leading, spacing: 4) {
                    Text(call.contact.name)
                        .foregroundColor(call.type.missedOrRejected ? .red : .black)
                        .font(.headline)
                        
                    Text(call.type.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
                Text(call.time)
                    .foregroundColor(.gray)
                Button {
                    
                } label: {
                  Image(systemName: "info.circle")
                }
                .tint(.green)
            }
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(uiColor: .systemGroupedBackground))
                .padding(.leading, 36)
        }
    }
}

struct RecentCallView_Previews: PreviewProvider {
    static var previews: some View {
        RecentCallView(call: Call.dummyCalls.randomElement()!)
            .previewLayout(.fixed(width: 375, height: 60))
    }
}
