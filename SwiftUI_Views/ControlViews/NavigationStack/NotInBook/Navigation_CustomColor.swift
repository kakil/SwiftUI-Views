// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Navigation_CustomColor: View {
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    Text("No material for NavigationView")
                        .padding()
                    Spacer()
                    Text("No material for TabView")
                        .padding()
                }
                .navigationTitle("No backgrounds")
                .font(.title2)
            }
            .tabItem {
                Image(systemName: "star")
                Text("Tab 1")
            }
            
            Text("Tab 2")
                .tabItem {
                    Image(systemName: "moon")
                    Text("Tab 2")
                }
            
            Text("Tab 3")
                .tabItem {
                    Image(systemName: "sun.max")
                    Text("Tab 3")
                }
        }
    }
}

struct Navigation_CustomColor_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_CustomColor()
    }
}
