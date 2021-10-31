//
//  ExtensionUse.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 31/10/21.
//

import SwiftUI

struct ExtensionUse: View {
    @State private var userInfo: String? = ""
    
    var body: some View {
        let user = UserEx(fName: "SwiftUI", lName: "UIKit", age: 22, department: "IOS")
        //let userInfo = user.getUserInfo(fName: user.fName, department: user.department)
        let userExtension = user.getUserExtension()
        
        VStack {
            Spacer()
            
            //SearchViewModel(text: "SearchBar")
            
            fullNameView(userInfo: $userInfo)
            
            extensionView(userExtension: userExtension)
            
          HStack {
            fNameView(fName: user.fName)
            
            lNameView(lName: user.lName)
            
            ageView(age: user.age)
            
          }
            
            extensionClick(userInfo: $userInfo, user: user)
            
            Spacer()
            Spacer()
        }
    }
}

struct ExtensionUse_Previews: PreviewProvider {
    static var previews: some View {
        ExtensionUse()
    }
}

struct fNameView: View {
    var fName: String
    
    var body: some View {
        Text("\(fName)")
            .padding()
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}

struct lNameView: View {
    @State var lName: String
    
    var body: some View {
        Text("\(lName)")
            .padding()
            .foregroundColor(.gray)
            .font(.title2)
    }
}

struct ageView: View {
    var age: Int
    
    var body: some View {
        Text("\(age)")
            .padding()
            .foregroundColor(.purple)
            .font(.title3)
    }
}

struct fullNameView: View {
    @Binding var userInfo: String?
    
    var body: some View {
        Text("\(userInfo ?? "")")
            .padding()
            .font(Font.body)
            .foregroundColor(.red)
    }
}

struct extensionView: View {
    var userExtension: String
    
    var body: some View {
        Text("\(userExtension)")
            .padding()
            .font(Font.body)
            .foregroundColor(.purple)
    }
}

struct extensionClick: View {
    @Binding var userInfo: String?
    var user: UserEx
    
    var body: some View {
        Button(action: {
            userInfo = user.getUserInfo(fName: user.fName, department: user.department)
        }, label: {
            Text("Extension")
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .font(.title2)
        })
    }
}
