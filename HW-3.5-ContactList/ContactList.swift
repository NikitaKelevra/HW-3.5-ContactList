//
//  ContactList.swift
//  HW-3.5-ContactList
//
//  Created by Сперанский Никита on 16.06.2021.
//

import SwiftUI

struct ContactList: View {
    
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            NavigationLink(destination: DetailsView(person: person)) {
                Text("\(person.fullName)")
            }
        }
        .navigationBarTitle("Contact List")
        
    }
}


struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Person.getContactList())
    }
}
