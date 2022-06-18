// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Gauge_Intro: View {
    @State private var progress = 0.25
    
    var body: some View {
        VStack(spacing: 40.0) {
            Gauge(value: progress) {
                Text("Default on iOS")
            }
            
            Gauge(value: progress) {
                Text("Level")
            }
            .gaugeStyle(.accessoryCircular)
            .tint(.orange)
            
            Gauge(value: progress) {
                Text("level")
            } currentValueLabel: {
                Text("25%")
                    .font(.caption)
            }
            .gaugeStyle(.accessoryCircular)
            .tint(.yellow)
            
            Gauge(value: progress) {
                Text("Level")
                    .padding(5)
            }
            .gaugeStyle(.accessoryCircularCapacity)
            .tint(.red)
            
            Gauge(value: progress) {
                Text("linearCapacity")
                    .padding(5)
            }
            .gaugeStyle(.linearCapacity)
            .tint(.purple)
            
            Gauge(value: progress) {
                Text("accessoryLinearCapacity")
                    .padding(5)
            }
            .gaugeStyle(.accessoryLinearCapacity)
            .tint(.purple)
        }
        .padding(.horizontal)
        .font(.title)
    }
}

struct Gauge_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Gauge_Intro()
    }
}
