//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Artemy Volkov on 08.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCounter = 0
    
    var body: some View {
        ZStack {
            GradientColorView()
            
            VStack {
                VStack {
                    switch tapCounter {
                    case 1:
                        ColorCircleView(color: .red, isOn: true)
                        ColorCircleView(color: .yellow, isOn: false)
                        ColorCircleView(color: .green, isOn: false)
                    case 2:
                        ColorCircleView(color: .red, isOn: false)
                        ColorCircleView(color: .yellow, isOn: true)
                        ColorCircleView(color: .green, isOn: false)
                    case 3:
                        ColorCircleView(color: .red, isOn: false)
                        ColorCircleView(color: .yellow, isOn: false)
                        ColorCircleView(color: .green, isOn: true)
                    default:
                        ColorCircleView(color: .red, isOn: false)
                        ColorCircleView(color: .yellow, isOn: false)
                        ColorCircleView(color: .green, isOn: false)
                    }
                }
                .aspectRatio(3, contentMode: .fill)
                .background(Gradient(colors: [.black, .black.opacity(0.5)]))
                .cornerRadius(10)
                .padding()
                
                Button {
                    if tapCounter == 3 {
                        tapCounter = 0
                    }
                    tapCounter += 1
                } label: {
                    Text(tapCounter == 0 ? "START" : "NEXT")
                        .frame(width: 150)
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
                .background(.white.opacity(0.7))
                .clipShape(Capsule(style: .continuous))
                
            }
            .shadow(radius: 10, x: 20, y: 10)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
