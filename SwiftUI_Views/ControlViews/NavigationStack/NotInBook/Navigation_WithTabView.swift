// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Navigation_WithTabView: View {
    @State private var selectedTab = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FirstTabView()
                .tag(1)

            SecondTabView()
                .edgesIgnoringSafeArea(.all)
                .tag(2)
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct FirstTabView: View {
    var body: some View {
        Text("Swipe to the second tab.")
    }
}

struct SecondTabView: View {
    var body: some View {
        NavigationView {
            Text("The nav bar shows the first time and then hides the second time.")
                .navigationBarHidden(true)
        }
    }
}

struct Navigation_WithTabView_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_WithTabView()
    }
}
