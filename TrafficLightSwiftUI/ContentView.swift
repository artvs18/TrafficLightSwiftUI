//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Artemy Volkov on 08.12.2022.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    @State private var currentLight: CurrentLight = .off
    @State private var buttonTitle = "START"
    
    var body: some View {
        ZStack {
            GradientColorView()
                .ignoresSafeArea()
            
            VStack {
                ColorCircleView(
                    color: .red,
                    opacity: currentLight == .red ? 1 : 0.3
                )
                ColorCircleView(
                    color: .yellow,
                    opacity: currentLight == .yellow ? 1 : 0.3
                )
                ColorCircleView(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.3
                )
                
                Button(action: action) {
                    Text(buttonTitle)
                        .frame(width: 150)
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
                .background(.white.opacity(0.7))
                .clipShape(Capsule(style: .continuous))
                .padding()
                
            }
            .aspectRatio(3, contentMode: .fill)
            .background(Gradient(colors: [.black, .black.opacity(0.5)]))
            .cornerRadius(10)
            .shadow(radius: 10, x: 20, y: 10)
            .padding()
        }
    }
    
    private func action() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
