//
//  JsonParseView.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 26/10/21.
//

import SwiftUI

struct JsonParseView: View {
    @State private var userList: [ToDoData]?
    @State var checkState: Bool = false
    
    var body: some View {
        List(userList ?? []) { userListData in
            
      HStack (alignment: .center, spacing: 10) {
         Button(action: {
            checkState = userListData.completed
                   
            print("State : \(self.checkState)")}) {
            
            HStack(alignment: .top, spacing: 10) {
              Rectangle()
                .fill(self.checkState ? Color.red : Color.green)
                .frame(width:20, height:20, alignment: .center)
                .cornerRadius(5)
                .foregroundColor(.green)
               }
            }.foregroundColor(Color.white)
                
            // HStack(alignment: .center, spacing: 10) {
//            Rectangle()
//                 .fill(userListData.completed ? Color.red : Color.green)
//                 .frame(width:20, height:20, alignment: .center)
//                 .cornerRadius(5)
//                 .foregroundColor(.green)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("userId : \(String(userListData.userId))")
                    .foregroundColor(.gray)
                    .font(.headline)
                
                Text("Id : \(String(userListData.id))")
                    .foregroundColor(.gray)
                    .font(.headline)
                
                Text("Title : \(userListData.title)")
                    .foregroundColor(.gray)
                    .font(.headline)
                
                Text("Success : \(userListData.completed.description)")
                    .foregroundColor(.gray)
                    .font(.headline)
                }
            }
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







