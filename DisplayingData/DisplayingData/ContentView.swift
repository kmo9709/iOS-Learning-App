//
//  ContentView.swift
//  DisplayingData
//
//  Created by Mahoney, Kevin (STL) on 12/18/24.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        VStack {
            Text("People: \(count)")
        }
        Spacer().frame(height: 20)
        HStack {
            
            Button("Add"){
                count += 1
            }
            Spacer().frame(width: 20)
            Button("Remove") {
                count -= 1
            }
        }
    }
}

#Preview {
    ContentView()
}
