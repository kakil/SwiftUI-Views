// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

class DoubleNavViewModel: ObservableObject {
    @Published var fetching = false
    @Published var data = [String]()
    
    func fetch() {
        fetching = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.data = ["Chris", "Lem", "Mark"]
            self.fetching = false
        }
    }
}

struct DoubleNavWithToolbarItems: View {
    var body: some View {
        TabView {
            VStack {
                Text("Tap on Tab 2")
            }
            .tabItem { Image(systemName: "1.circle.fill") }
            
            ViewTwo()
                .tabItem { Image(systemName: "2.circle.fill") }
        }
    }
}

struct ViewTwo: View {
    @StateObject private var vm = DoubleNavViewModel()
    @State private var showViewTwoChild = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                NavigationLink(destination: ViewTwoChild(), isActive: $showViewTwoChild, label: { EmptyView() })
                Text("A - Triggers double navigation (iOS 14)")
                Text("B - Workaround")
                Text("C - Works fine")
                Text("Why does B, C work but not A?")
                NavigationLink(destination: ViewTwoChild(),label: {
                    Text(Image(systemName: "c.circle")) + Text(" Navigate to ViewTwoChild")
                })
                if vm.fetching {
                    ProgressView().scaleEffect(3)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Tab 2")
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    NavigationLink(destination: ViewTwoChild(),label: {
                        Image(systemName: "a.circle")
                    })
                }
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Button(action: {
                        showViewTwoChild = true
                    }, label: {
                        Image(systemName: "b.circle")
                    })
                }
            }
        }
        .onAppear {
            vm.fetch()
        }
    }
}

struct ViewTwoChild: View {
    var body: some View {
        VStack {
            Text("Now tap on Tab 1.")
        }
        .navigationTitle("ViewTwoChild")
    }
}

struct DoubleNavWithToolbarItems_Previews: PreviewProvider {
    static var previews: some View {
        DoubleNavWithToolbarItems()
    }
}
