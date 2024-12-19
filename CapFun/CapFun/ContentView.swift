//
//  ContentView.swift
//  CapFun
//
//  Created by Mahoney, Kevin (STL) on 12/18/24.
//

import SwiftUI

struct ContentView: View {

    @State var userText: String = "Hello There"
    @State var textToCopy: String = "Hello There"
    @State var capMode = 1
    var body: some View {
        VStack {
            Spacer(minLength: 50)
            if capMode == 1 {
                Text(userText.uppercased())
                    .font(.largeTitle)
            }
            
            if capMode == 2 {
                Text(userText.capitalized)
                    .font(.largeTitle)
            }
            
            if(capMode == 3){
                Text(userText.lowercased())
                    .font(.largeTitle)
            }
            
            Spacer()
            
            Button(action: {
                UIPasteboard.general.string = textToCopy
            }){
                CustomButtonView(title: "Copy", color: .orange)
            }
        
            HStack {
                Button(action: {
                    capMode = 1
                    textToCopy = userText.uppercased()
                }){
                    CustomButtonView(title: "All Caps",color: .red)
                }
                Button(action: {
                    capMode = 2
                    textToCopy = userText.capitalized
                }){
                    CustomButtonView(title: "First Letter",color: .green)
                }
                Button(action: {
                    capMode = 3
                    textToCopy = userText.lowercased()
                }){
                    CustomButtonView(title: "lowercase", color: .blue)
                }
            }
            
            TextField("Enter Text Here :)", text: $userText)
                .padding(.vertical)
        
        }
        .padding(20)
    }
}

#Preview {
    ContentView()
}
