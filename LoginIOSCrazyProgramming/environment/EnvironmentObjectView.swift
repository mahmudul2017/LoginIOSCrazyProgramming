//
//  EnviournmentObjectView.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 2/11/21.
//

import SwiftUI

struct EnvironmentObjectView: View {
    @ObservedObject var enviourClass: EnviourClass = EnviourClass()
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Text("Property Wrapper")
            
            Text("@EnviournmentObject")  .bold()
                .font(.title2)
                .foregroundColor(.green)
            
            Button(action: {
                enviourClass.age += 1
            }, label: {
                Text("\(enviourClass.age)")
            })
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            
            EnviourView()
                .environmentObject(enviourClass)
        }
    }
}

struct EnviourView: View {
    @EnvironmentObject var enviourClass: EnviourClass
    
    var body: some View {
        Text("EnvironmentObject : \(enviourClass.age)")
            .bold()
            .font(.title2)
            .foregroundColor(.green)
    }
}

class EnviourClass: ObservableObject {
    @Published var age: Int = 18
}

struct EnvironmentObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
    }
}


