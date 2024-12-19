//
//  CustomButtonView.swift
//  CapFun
//
//  Created by Mahoney, Kevin (STL) on 12/18/24.
//

import SwiftUI

struct CustomButtonView: View {
    
    var title: String
    var color: Color
    
    var body: some View {
        Text(title)
            .font(.body)
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(color)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    CustomButtonView(title: "Tap Me", color: .red)
}
