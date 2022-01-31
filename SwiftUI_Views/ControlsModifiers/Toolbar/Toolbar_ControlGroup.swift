// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Toolbar_ControlGroup: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView("",
                           subtitle: "ControlGroup",
                           desc: "Use the ControlGroup with a navigation style to show multiple buttons in the NavigationView that are closer together than using a ToolbarItemGroup.")
                
                Spacer()
            }
            .navigationTitle("Toolbar")
            .font(.title)
            .toolbar {
                ToolbarItem {
                    ControlGroup {
                        Button(action: {}) {
                            Image(systemName: "aspectratio")
                        }
                        Button(action: {}) {
                            Image(systemName: "gearshape.fill")
                        }
                    }
                    .controlGroupStyle(.navigation)
                }
            }
            .tint(.green)
        }
    }
}

struct Toolbar_ControlGroup_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar_ControlGroup()
            .preferredColorScheme(.dark)
    }
}
