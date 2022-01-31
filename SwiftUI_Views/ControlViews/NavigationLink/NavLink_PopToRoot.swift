//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct NavLink_PopToRoot: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView("",
                           subtitle: "Pop To Root",
                           desc: "After navigating through more than one view, you may want to reverse navigation programmatically all the way back to the beginning (root) view.",
                           back: Color("Theme3ForegroundColor"),
                           textColor: Color("Theme3BackgroundColor"))
                
                NavigationLink(
                    destination: NavLinkView2(isActive: $isActive),
                    isActive: $isActive,
                    label: {
                        Text("Navigate to View 2")
                    })
            }
            .navigationTitle("NavigationLink")
            .font(.title)
        }
    }
}

struct NavLinkView2: View {
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            NavigationLink("Navigate to View 3", destination: NavLinkView3(isActive: $isActive))
        }
        .navigationTitle("View 2")
        .font(.title)
    }
}

struct NavLinkView3: View {
    @Binding var isActive: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                isActive.toggle()
            }, label: {
                Text("Go Back to Root View")
            })
        }
        .navigationTitle("View 3")
        .font(.title)
    }
}

struct NavLink_PopToRoot_Previews: PreviewProvider {
    static var previews: some View {
        NavLink_PopToRoot()
    }
}
