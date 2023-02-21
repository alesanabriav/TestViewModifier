//
//  ContentView.swift
//  TestViewModifier
//
//  Created by Alejandro Sanabria on 21/02/23.
//

import SwiftUI

struct TextButtonViewModifier : ViewModifier {
    
    var bgColor: Color = .blue
    var height: CGFloat = 48
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .foregroundColor(.white)
            .frame(height: height)
            .frame(maxWidth: .infinity)
            .background(bgColor)
            .cornerRadius(8)
            .shadow(radius: 8)
            .padding()
    }
}

extension View {
    
    func textButtonStyle(bgColor: Color = .blue, height: CGFloat = 48) -> some View {
        modifier(TextButtonViewModifier(bgColor: bgColor, height: height))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Text Button")
                .textButtonStyle(bgColor: .cyan)
            
            Text("Text Button 2")
                .modifier(TextButtonViewModifier(bgColor: .red))
            
            Text("Text Button 3")
                .modifier(TextButtonViewModifier(height: 58))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
