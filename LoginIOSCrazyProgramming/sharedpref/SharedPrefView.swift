//
//  SharedPrefView.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 1/11/21.
//

import SwiftUI

struct SharedPrefView: View {
    @State private var username: String = ""
    @State private var saveUsername: String = ""
    @State private var retriveName: String = ""
    @State private var retriveText: String = ""
    
    var body: some View {
        VStack {
            Text("Welcome to SwiftUI")
                .bold()
                .font(.title2)
                .foregroundColor(.green)
            
            Text("\(saveUsername)")
                .italic()
                .font(.title2)
                .foregroundColor(.gray)
            
            Text("Retrive : \(retriveText)")
                .bold()
                .font(.title2)
                .foregroundColor(Color.black)

            Text("Enter your name")
                .padding()
            
            HStack {
                Spacer()
                
                TextField("Enter your name", text: $username)
                    .multilineTextAlignment(.leading)
                    .padding()
                    .background(lightGreyColor)
                
                Spacer()
            }
            
            // Text use for marginTop
            Text("")
            
            Button(action: {
                saveData()
            }, label: {
                Text("Save")
            })
            .padding(EdgeInsets.init(top: 8, leading: 32, bottom: 8, trailing: 32))
            .foregroundColor(.white)
            .background(Color.green)
            
            // Text use for marginTop
            Text("")
            
            Button(action: {
                retriveText = retriveName
            }, label: {
                Text("Retrive Data")
            }).onAppear(perform: {
                getData()
            })
            .padding(EdgeInsets.init(top: 8, leading: 32, bottom: 8, trailing: 32))
            .foregroundColor(.white)
            .background(Color.green)
        }
//        }.onAppear(perform: {
//            getData()
//        })
    }
     
    func saveData() {
        UserDefaults.standard.set(self.username, forKey: "UserName")
    }
    
    func getData() {
        saveUsername = "UserName : \(UserDefaults.standard.string(forKey: "UserName") ?? "")"
        retriveName = "\(UserDefaults.standard.string(forKey: "UserName") ?? "")"
    }
 }

struct SharedPrefView_Previews: PreviewProvider {
    static var previews: some View {
        SharedPrefView()
    }
}
