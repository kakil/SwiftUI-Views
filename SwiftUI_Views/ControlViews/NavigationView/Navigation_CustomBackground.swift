// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Navigation_CustomBackground: View {
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                    .background(Color("Theme3ForegroundColor").opacity(0.5))
                
                Spacer()
                
                HeaderView("",
                           subtitle: "Custom Background",
                           desc: "The new background modifier allows you to have backgrounds that ignore safe area edges, such as the nav view safe area edge.",
                           back: Color("Theme3ForegroundColor"),
                           textColor: Color("Theme3BackgroundColor"))
                
                Spacer()
            }
            .navigationTitle("NavigationView")
            .font(.title)
        }
    }
}

struct Navigation_CustomBackground_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_CustomBackground()
    }
}
