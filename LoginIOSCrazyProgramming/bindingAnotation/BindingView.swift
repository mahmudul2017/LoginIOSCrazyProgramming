//
//  BindingView.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 25/10/21.
//

import SwiftUI

struct BindingView: View {
    @State private var textChanger: String = "Text Changer"
    @State private var textCheck: String = "Text Check"
    @State private var isVisible: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Spacer()

            Text("\(self.textChanger)")
                .padding()

            Text(textCheck)
                .padding(EdgeInsets.init(top: 0, leading: 32, bottom: 48, trailing: 32))

            Button(action: {self.textChanger = "Binding Level 1 Disable!"}, label: {
                Text("Binding Level 1")
            })
            .padding(EdgeInsets.init(top: 12, leading: 24, bottom: 12, trailing: 24))
            .foregroundColor(.white)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)

            Button(action: {self.isVisible.toggle()}, label: {
                Text("Binding Level 2")
            })
            .padding(EdgeInsets.init(top: 12, leading: 24, bottom: 12, trailing: 24))
            .foregroundColor(.white)
            .background(Color.green)

            if isVisible {
                Text(self.textCheck)
            }
            
            Spacer()
            Spacer()
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
