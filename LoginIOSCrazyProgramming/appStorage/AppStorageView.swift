//
//  AppStorageView.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 1/11/21.
//

import SwiftUI

struct AppStorageView: View {
    // save small data like username, token or password
    @AppStorage("storageValue") var userId: String = "User - 001"
    var saveData: String = "No Data"
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 16) {
            Text("Property Wrapper")
            
            Text("@AppStorage")
                .bold()
                .font(.title2)
                .foregroundColor(.green)
            
//            Text(saveData)
//                .font(.title2)
//                .foregroundColor(.red)
            
            Button(action: {
                UserDefaults.standard.setValue((UUID().uuidString), forKey: "storageValue")
                // userId = "User - \(UUID().uuid)"
            }, label: {
                Text("\(userId)")
            })
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            
            Button(action: {
                //saveData = UserDefaults.standard.string(forKey: "storageValue") ?? "UnSuccessful"
            }, label: {
                Text("Retrive Data")
            })
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding(EdgeInsets.init(top: 6, leading: 16, bottom: 6, trailing: 16))
            .background(Color.red)
            .foregroundColor(.white)
        }
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
