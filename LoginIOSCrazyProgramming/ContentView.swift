//
//  ContentView.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 19/10/21.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct ContentView: View {
    @State private var username : String = ""
    @State private var password : String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                loginText()
                
                loginImage()
                
                loginUsername(username: $username)
                
                loginPassword(password: $password)
                
                Button(action: {print("Login Called!")}) {
                    NavigationLink(destination: UserListPage()) {
                        loginClick()
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct loginText: View {
    var body: some View {
        Text("SwiftUi Login")
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct loginImage: View {
    var body: some View {
        Image("royalgreenlogo")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 24)
    }
}

struct loginClick: View {
    var body: some View {
        Text("Login")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}

struct loginUsername: View {
    @Binding var username : String
    
    var body: some View {
            TextField("Username", text: $username)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 6)
    }
}

struct loginPassword: View {
    @Binding var password : String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 12)
    }
}
