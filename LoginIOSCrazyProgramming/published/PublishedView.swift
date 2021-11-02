//
//  PublishedView.swift
//  LoginIOSCrazyProgramming
//
//  Created by Mahmudul on 1/11/21.
//

import SwiftUI

struct PublishedView: View {
    @ObservedObject var value: PublishClass = PublishClass()
    
    var body: some View {
        // spacing means space between two view (ex - Textview or TextField or Button)
        VStack(alignment: .center, spacing: 16) {
            Text("Property Wrapper")
            
            Text("@Published")
                .bold()
                .font(.title2)
                .foregroundColor(.green)
            
            Button(action: {
                value.publishValue = "Pub - \(UUID().uuidString)"
            }, label: {
                Text("\(value.publishValue)")
            })
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
        }
    }
}

struct PublishedView_Previews: PreviewProvider {
    static var previews: some View {
        PublishedView()
    }
}

class PublishClass: ObservableObject {
   // value observe from another class
   // @State works only in same class
   @Published var publishValue: String = "Publish"
}
