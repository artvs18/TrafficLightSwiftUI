//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Artemy Volkov on 08.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    var color: Color
    var isOn: Bool
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(isOn ? 1 : 0.3)
            .overlay(Circle().stroke(.black, lineWidth: 3))
            .shadow(color: color, radius: isOn ? 15 : 0)
            .padding()
    }
}
