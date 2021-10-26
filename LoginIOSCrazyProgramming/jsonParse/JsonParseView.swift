//
//  JsonParseView.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 26/10/21.
//

import SwiftUI

struct JsonParseView: View {
    @State private var userList: [ToDoData]?
    
    var body: some View {
        List(userList ?? []) { userListData in
            Text(userListData.title)
                .foregroundColor(.gray)
                .font(.title)
        }
        .onAppear(perform: getApiCall)
        .foregroundColor(.gray)
        
//        Text(userList?[0].title ?? "Not Found!")
//            .onAppear(perform: getApiCall)
//            .foregroundColor(.gray)
    }
    
    private func getApiCall() {
        
        guard let url = URL(string:"https://jsonplaceholder.typicode.com/todos") else {
                   return
            }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            if let userData = try? JSONDecoder().decode([ToDoData].self, from: data) {
            DispatchQueue.main.async {
                self.userList = userData
            }
         }
      }.resume()
   }
}

struct JsonParseView_Previews: PreviewProvider {
    static var previews: some View {
        JsonParseView()
    }
}







