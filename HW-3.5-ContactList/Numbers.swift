//
//  Numbers.swift
//  HW-3.5-ContactList
//
//  Created by Сперанский Никита on 16.06.2021.
//

import SwiftUI

struct Numbers: View {
    let persons: [Person]
    
    var body: some View {
        VStack(alignment: .leading) {
            List{
                ForEach(persons) { person in
                    Section(
                        header: Text("\(person.fullName)")
                            .font(.system(size: 18,
                                          weight: .light,
                                          design: .serif))
                            .textCase(.none)
                    ){
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text("\(person.phoneNumber)")
                        }
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.blue)
                            Text("\(person.email)")
                        }
                    }
                }
                .navigationBarTitle("Contact List")
            }
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        Numbers(persons: Person.getContactList())
    }
}
