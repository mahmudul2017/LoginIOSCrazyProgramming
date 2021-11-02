//
//  UserListPage.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 21/10/21.
//

import SwiftUI

struct UserListPage: View {
    var body: some View {
            VStack {
                NavigationLink(destination: BindingView()) {
                    Text("Binding Example")
                        .padding(EdgeInsets.init(top: 12, leading: 36, bottom: 12, trailing: 36))
                        .background(Color.yellow)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                NavigationLink(destination: ContactsList()) {
                    Text("ListView Example")
                        .padding(EdgeInsets.init(top: 12, leading: 36, bottom: 12, trailing: 36))
                        .background(Color.yellow)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                NavigationLink(destination: JsonParseView()) {
                    Text("Json Parse Example")
                        .padding(EdgeInsets.init(top: 12, leading: 36, bottom: 12, trailing: 36))
                        .background(Color.yellow)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                NavigationLink(destination: ExtensionUse()) {
                    Text("Extension Example")
                        .padding(EdgeInsets.init(top: 12, leading: 36, bottom: 12, trailing: 36))
                        .background(Color.yellow)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                NavigationLink(destination: SharedPrefView()) {
                    Text("SharedPref Example")
                        .padding(EdgeInsets.init(top: 12, leading: 36, bottom: 12, trailing: 36))
                        .background(Color.yellow)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                NavigationLink(destination: PublishedView()) {
                    Text("Published Property")
                        .padding(EdgeInsets.init(top: 12, leading: 36, bottom: 12, trailing: 36))
                        .background(Color.yellow)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                NavigationLink(destination: AppStorageView()) {
                    Text("AppStorage Property")
                        .padding(EdgeInsets.init(top: 12, leading: 36, bottom: 12, trailing: 36))
                        .background(Color.yellow)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                NavigationLink(destination: EnvironmentObjectView()) {
                    Text("EnvironmentObject Property")
                        .padding(EdgeInsets.init(top: 12, leading: 36, bottom: 12, trailing: 36))
                        .background(Color.yellow)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
          }
     }
}

struct UserListPage_Previews: PreviewProvider {
    static var previews: some View {
        UserListPage()
    }
}
