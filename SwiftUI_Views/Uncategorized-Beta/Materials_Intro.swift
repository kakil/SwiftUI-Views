//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct Materials_Intro: View {
    var body: some View {
        ZStack {
            Image("arches")
                .resizable()
                .ignoresSafeArea()
            
            VStack(spacing: 20.0) {
                HeaderView("Materials",
                           subtitle: "Introduction",
                           desc: "You can now use materials to create blurred backgrounds.")
                    .background(.bar)

                Text("Ultra Thin")
                    .frame(maxWidth: .infinity, minHeight: 80)
                    .background(.ultraThinMaterial)
                
                Text("Thin")
                    .frame(maxWidth: .infinity, minHeight: 80)
                    .background(.thinMaterial)
                
                Text("Regular")
                    .frame(maxWidth: .infinity, minHeight: 80)
                    .background(.regularMaterial)
                
                Text("Thick")
                    .frame(maxWidth: .infinity, minHeight: 80)
                    .background(.thickMaterial)
                
                Text("Ultra Thick")
                    .frame(maxWidth: .infinity, minHeight: 80)
                    .background(.ultraThickMaterial)
            }
            .font(.title)
        }
    }
}

struct Materials_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Materials_Intro()
            .preferredColorScheme(.dark)
    }
}
