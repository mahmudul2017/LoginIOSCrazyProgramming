//
//  ContactsDetails.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 26/10/21.
//

import SwiftUI

struct ContactsDetails: View {
    @State var contacts: Contacts
    
    var body: some View {
        VStack(alignment: .center, spacing: nil) {
            contactImageView(contacts: $contacts)
            
            contactNameView(contacts: $contacts)
           
            contactInfoForm(contacts: $contacts)
        }
    }
}

struct ContactsDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactsDetails(contacts: contacts[0])
    }
}

struct contactImageView: View {
    @Binding var contacts: Contacts
    
    var body: some View {
        Image(contacts.contactImage)
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipped()
            .cornerRadius(50)
            .shadow(radius: 3)
    }
}

struct contactNameView: View {
    @Binding var contacts: Contacts
    
    var body: some View {
        Text(contacts.contactName)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .fontWeight(.medium)
    }
}

struct contactInfoForm: View {
    @Binding var contacts: Contacts
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Text("Phone")
                    Spacer()
                    Text(contacts.contactPhone)
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                
                HStack {
                    Text("Email")
                    Spacer()
                    Text(contacts.contactEmail)
                        .foregroundColor(.gray)
                        .font(.callout)
                        .multilineTextAlignment(.trailing)
                }
                
                HStack {
                    Text("Address")
                    Spacer()
                    Text(contacts.contactAddress)
                        .foregroundColor(.gray)
                        .font(.callout)
                        .multilineTextAlignment(.trailing)
                    //.frame(width: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            }
            
            Section {
                Button(action: {
                    print("Message Click!")
                }, label: {
                    Text("Send Message")
                })
                
                Button(action: {
                    print("Call Click!")
                }, label: {
                    Text("Call")
                })
            }
        }
    }
}
