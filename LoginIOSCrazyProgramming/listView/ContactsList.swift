//
//  ContactsList.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 26/10/21.
//

import SwiftUI

struct ContactsList: View {
    var body: some View {
            List(contacts) { contactData in
                NavigationLink(destination: ContactsDetails(contacts: contactData)) {
                    ContactSListSample(contacts: contactData)
                }
            }.onAppear(perform: {
                UITableView.appearance().contentInset.top = -2
            })
      }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList()
    }
}

struct ContactSListSample: View {
    let contacts: Contacts
    
    var body: some View {
        HStack(alignment: .top, spacing: nil) {
            Image(contacts.contactImage)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            
            VStack(alignment: .leading) {
                Text(contacts.contactName)
                    .font(.system(size: 22, weight: .medium, design: .default))
                Text(contacts.contactPhone)
            }
        }
    }
}
