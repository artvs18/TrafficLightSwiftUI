//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Artemy Volkov on 08.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    var opacity: Double = 0.3
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(.black, lineWidth: 3))
            .shadow(color: color, radius: opacity < 1 ? 0 : 15)
            .padding()
    }
}
