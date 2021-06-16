//
//  DetailsView.swift
//  HW-3.5-ContactList
//
//  Created by Сперанский Никита on 16.06.2021.
//

import SwiftUI

struct DetailsView: View {
    
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 200, height: 200)
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
        
        .navigationBarTitle("\(person.fullName)")
            .font(.title2)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person.getContactList().first!)
    }
}
