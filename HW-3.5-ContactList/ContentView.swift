//
//  ContentView.swift
//  HW-3.5-ContactList
//
//  Created by Сперанский Никита on 16.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    let persons: [Person] = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactList(persons: persons)
                    .tabItem {
                        Image(systemName: "person.3")
                        Text ("Contacts")
                    }
                
                Numbers(persons: persons)
                    .tabItem {
                        Image(systemName: "phone")
                        Text ("Numbers")
                    }
            }
            .navigationBarTitle("Contact List")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
