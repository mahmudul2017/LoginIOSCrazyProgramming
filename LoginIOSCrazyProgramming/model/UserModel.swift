//
//  UserModel.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 21/10/21.
//
import Foundation
import SwiftUI

struct UserModel: Codable {
    var id: Int
    var userId: Int
    var title: String
    var body: String
}

struct ToDoData : Codable, Identifiable {
    var id: Int
    var userId: Int
    var title: String
    var completed: Bool
}

//var userList: [UserModel]?

//private func getApiCall() {
//    guard let url = URL(string:"https://jsonplaceholder.typicode.com/todos") else {
//               return
//        }
//    
//    URLSession.shared.dataTask(with: url) { data, response, error in
//        guard let data = data else {
//            return
//        }
//        
//        if let userData = try? JSONDecoder().decode([UserModel].self, from: data) {
//        DispatchQueue.main.async {
//            userList.self = userData
//        }
//     }
//  }.resume()
//}

