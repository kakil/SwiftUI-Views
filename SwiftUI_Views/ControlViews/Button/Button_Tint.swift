//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Button_Tint: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView("Button",
                       subtitle: "Tint",
                       desc: "Tint is a little bit different than accentColor. The tint can affect button styles differently.")
            
            Button("Bordered - Accent") { }
            .buttonStyle(.bordered)
            .foregroundColor(Color.accentColor)
            
            Button("Bordered - Tint") { }
            .buttonStyle(.bordered)
            .tint(.purple)
            
            Button("Borderless - Tint") { }
            .buttonStyle(.borderless)
            .tint(.purple)
            
            Button("Alternative AccentColor") { }
            .buttonStyle(.borderless)
            .foregroundColor(Color.accentColor)
            
            Button("Deprecated AccentColor") { }
            .buttonStyle(.borderless)
            .accentColor(.purple)
        }
        .controlSize(.large)
        .font(.title)
    }
}

struct Button_Tint_Previews: PreviewProvider {
    static var previews: some View {
        Button_Tint()
    }
}