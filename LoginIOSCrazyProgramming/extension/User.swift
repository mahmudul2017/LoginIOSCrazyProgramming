//
//  User.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 31/10/21.
//

import Foundation
import SwiftUI

struct UserEx {
    let fName: String
    let lName: String
    let age: Int
    let department: String
    
    init(fName: String, lName: String, age: Int, department: String) {
        self.fName = fName
        self.lName = lName
        self.age = age
        self.department = department
    }
    
    func getUserInfo(fName: String, department: String) -> String {
          fName + " ~ " + department
    }
    
    func getUserAge(age: Int) -> String {
          "age : \(String(age))"
    }
}

extension UserEx {
    func getUserExtension() -> String {
        "Extension Called"
    }
}
