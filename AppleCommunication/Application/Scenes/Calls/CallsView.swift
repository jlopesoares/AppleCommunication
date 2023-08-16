//
//  CallsView.swift
//  AppleCommunication
//
//  Created by João Pedro Soares on 12/08/2023.
//

import SwiftUI

struct CallsView: View {
    
    let contacts = Contact.dummyContacts
    let calls = Call.dummyCalls

    @State var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    
                    Header(title: "Favourites")
                        .padding()
                    FavouritesGrid()
                    Header(title: "Recent")
                        .padding()
                    
                    Divider()
                    
                    ForEach(calls) { call in
                        RecentCallView(call: call)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 4)
                    }
                }
            }
            
            .navigationTitle("Calls")
            .navigationBarTitleDisplayMode(.large)
            .searchable(text: $searchText)
            
            Spacer()
        }
    }
}

struct FavouritesGrid: View {
    
    let favouritesContacts: [Contact] = Contact.dummyContacts
    
    var body: some View {
        Grid() {
            GridRow {
                FavouriteContactView(contact: favouritesContacts.randomElement()!)
                FavouriteContactView(contact: favouritesContacts.randomElement()!)
                FavouriteContactView(contact: favouritesContacts.randomElement()!)
            }
            .frame(width: 110, height: 110)
            GridRow {
                FavouriteContactView(contact: favouritesContacts.randomElement()!)
                FavouriteContactView(contact: favouritesContacts.randomElement()!)
                FavouriteContactView(contact: favouritesContacts.randomElement()!)
            }
            .frame(width: 110, height: 110)
            GridRow {
                FavouriteContactView(contact: favouritesContacts.randomElement()!)
                FavouriteContactView(contact: favouritesContacts.randomElement()!)
                FavouriteContactView(contact: favouritesContacts.randomElement()!)
            }
            .frame(width: 110, height: 110)
        }
        
        .padding(.horizontal)
    }
}

struct Header: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
            
            Spacer()
            
            Button("Edit") {
                
            }
            .tint(.green)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
}

struct CallsView_Previews: PreviewProvider {
    static var previews: some View {
        CallsView()
    }
}
