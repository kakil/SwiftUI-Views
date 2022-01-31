// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Navigation_UINavigationBarAppearance: View {
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                    .background(Color("Theme3ForegroundColor").opacity(0.5))
                
                Spacer()
                
                HeaderView("",
                           subtitle: "UINavigationBarAppearance",
                           desc: "Use UINavigationBarAppearance to apply a style/color on ALL navigation bars.",
                           back: Color("Theme3ForegroundColor"),
                           textColor: Color("Theme3BackgroundColor"))
                
                Spacer()
            }
            .navigationTitle("NavigationView")
            .font(.title)
            .onAppear {
                let appearance = UINavigationBarAppearance()
                
                appearance.backgroundColor = UIColor(Color("Theme3ForegroundColor").opacity(0.5))
                
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }
        }
    }
}

struct Navigation_UINavigationBarAppearance_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_UINavigationBarAppearance()
    }
}
