//
//  TabBar.swift
//  AppleCommunication
//
//  Created by João Pedro Soares on 12/08/2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
        @State var searchText = ""
        
        TabView {
            CallsView().tabItem {
                Label("Calls", systemImage: "phone.fill")
            }
            
            InboxView().tabItem {
                Label("Inbox", systemImage: "tray.fill")
            }
            
            Text("People").tabItem {
                Label("People", systemImage: "person.2.fill")
            }
            
            Text("Dial").tabItem {
                Label("Dial", systemImage: "square.grid.3x3.fill")
            }
        }
        .tint(.green)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
