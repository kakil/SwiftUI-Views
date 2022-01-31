// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio
// Feedback ID: FB9836579

import SwiftUI

struct NavLink_TwoDeep: View {
    @State private var showView2 = false
    
    var body: some View {
        NavigationView {
            NavigationLink(isActive: $showView2) {
                NavLinkShowView2(showView2: $showView2)
            } label: {
                Text("Show View 2")
            }
            .navigationTitle("View 1")
        }
    }
}

struct NavLinkShowView2: View {
    @Binding var showView2: Bool
    @State private var showView3 = false
    
    var body: some View {
        VStack {
            NavigationLink(isActive: $showView3) {
                NavLinkShowView3(showView3: $showView3)
            } label: {
                Text("Show View 3")
            }
            Text("Tapping this button works.")
            Button("Back to View 1") {
                showView2 = false
            }
        }
        .navigationTitle("View 2")
    }
}

struct NavLinkShowView3: View {
    @Binding var showView3: Bool
    
    var body: some View {
        VStack {
            Text("In iOS 15, this button no longer works. (Works in iOS 14)")
            Button("Back to View 2") {
                showView3 = false
            }
            .navigationTitle("View 3")
        }
    }
}

struct NavLink_TwoDeep_Previews: PreviewProvider {
    static var previews: some View {
        NavLink_TwoDeep()
    }
}

