//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct NavigationLink_AutoPopProblem: View {
    public var body: some View {
        NavigationView {
            VStack {
                Text("In iOS 14, the NavigationLinks used to autopop back to the origin view. Looks like it works fine in iOS 15.")
                    .padding(.horizontal)
                
                List {
                    row
                    row
                    row
                }
            }
        }
    }
    
    private var row: some View {
        NavigationLink(destination: SecondScreen()) {
            Text("Row")
        }
    }
}

struct NavigationLink_AutoPopProblemPreviews: PreviewProvider {
    static var previews: some View {
        NavigationLink_AutoPopProblem()
    }
}

struct SecondScreen: View {
    @Environment(\.dismiss) var dismiss
    
    public var body: some View {
        VStack(spacing: 10) {
            NavigationLink(destination: thirdScreenA) {
                Text("Link to Third Screen A")
            }
            NavigationLink(destination: thirdScreenB) {
                Text("Link to Third Screen B")
            }
            Button("Go back", action: { dismiss() })
        }
    }
    var thirdScreenA: some View {
        Text("thirdScreenA")
    }
    var thirdScreenB: some View {
        Text("thirdScreenB")
    }
}
