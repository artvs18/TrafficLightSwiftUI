//
//  GradientColorView.swift
//  TrafficLightSwiftUI
//
//  Created by Artemy Volkov on 09.12.2022.
//

import SwiftUI

struct GradientColorView: View {
    var body: some View {
        LinearGradient(
            colors: [.black.opacity(0.9), .gray],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}
