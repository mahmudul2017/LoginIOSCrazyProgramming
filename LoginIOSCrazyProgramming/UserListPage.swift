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
                }
                
                NavigationLink(destination: ContactsList()) {
                    Text("ListView Example")
                        .padding(EdgeInsets.init(top: 12, leading: 36, bottom: 12, trailing: 36))
                        .background(Color.yellow)
                }
                
                NavigationLink(destination: JsonParseView()) {
                    Text("Json Parse Example")
                        .padding(EdgeInsets.init(top: 12, leading: 36, bottom: 12, trailing: 36))
                        .background(Color.yellow)
                }
                
                NavigationLink(destination: ExtensionUse()) {
                    Text("Extension Example")
                        .padding(EdgeInsets.init(top: 12, leading: 36, bottom: 12, trailing: 36))
                        .background(Color.yellow)
                }
          }
     }
}

struct UserListPage_Previews: PreviewProvider {
    static var previews: some View {
        UserListPage()
    }
}
