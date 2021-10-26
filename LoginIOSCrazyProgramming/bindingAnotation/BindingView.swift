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
    
    //@State private var genderMale: String = "Male"
    //@State private var genderFemale: String = "Female"
    @State private var genderType: String = "Male"
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Spacer()

            changerText(textChanger: $textChanger)

            checkText(textCheck: $textCheck)

            bindingButton1(textChanger: $textChanger)

            bindingButton2(isVisible: $isVisible, textCheck: $textCheck)
            
            checkboxFieldView(genderType: $genderType)
            
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

struct changerText: View {
    @Binding var textChanger: String
    
    var body: some View {
        Text("\(self.textChanger)")
            .padding()
    }
}

struct checkText: View {
    @Binding var textCheck: String
    
    var body: some View {
        Text(textCheck)
            .padding(EdgeInsets.init(top: 0, leading: 32, bottom: 48, trailing: 32))
    }
}

struct bindingButton1: View {
    @Binding var textChanger: String
    
    var body: some View {
        Button(action: {self.textChanger = "Binding Level 1 Disable!"}, label: {
            Text("Binding Level 1")
        })
        .padding(EdgeInsets.init(top: 12, leading: 24, bottom: 12, trailing: 24))
        .foregroundColor(.white)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
    }
}

struct bindingButton2: View {
    @Binding var isVisible: Bool
    @Binding var textCheck: String
    
    var body: some View {
        Button(action: {self.isVisible.toggle(); self.textCheck = "Ok"}, label: {
            Text("Binding Level 2")
        })
        .padding(EdgeInsets.init(top: 12, leading: 24, bottom: 12, trailing: 24))
        .foregroundColor(.white)
        .background(Color.green)
        
        if isVisible {
            //self.textCheck = "Binding Level 2 Disable!"
            Text(self.textCheck)
        }
    }
}

struct checkboxFieldView : View {
    @State var checkState:Bool = false
    //@State var genderMale: String
    //@State var genderFemale: String
    @Binding var genderType: String

     var body: some View {
         Spacer()
        
         Text("Select Gender Type ?")
            .foregroundColor(.red)
        
         Button(action: {
                    self.checkState = !self.checkState;
                    self.genderType = "Male";
                    
                    print("State : \(self.checkState)")}) {
                    HStack(alignment: .top, spacing: 10) {

                    Rectangle()
                            .fill(self.checkState ? Color.green : Color.red)
                            .frame(width:20, height:20, alignment: .center)
                            .cornerRadius(5)

                       Text("Male")
                    .foregroundColor(.green)
            }
        }
        .foregroundColor(Color.white)
        
        Button(action: {
                self.checkState = !self.checkState;
                self.genderType = "Female"
               print("State : \(self.checkState)")}) {
                 HStack(alignment: .top, spacing: 10) {

                  Rectangle()
                           .fill(self.checkState ? Color.green : Color.red)
                           .frame(width:20, height:20, alignment: .center)
                           .cornerRadius(5)

                     Text("Female")
                   .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
           }
       }
       .foregroundColor(Color.white)
        
        Text("Select : \(self.genderType)")
    }
}
