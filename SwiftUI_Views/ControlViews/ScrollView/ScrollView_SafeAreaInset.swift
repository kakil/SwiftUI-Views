// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct ScrollView_SafeAreaInset: View {
    @State private var names = ["Scott", "Mark", "Chris", "Sean", "Rod", "Meng", "Natasha", "Chase", "Evans", "Paul", "Durtschi", "Max"]
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(self.names, id: \.self) { name in
                    NavigationLink(destination: DetailView(name: name)) {
                        HStack {
                            Text(name)
                                .foregroundColor(.primary)
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.green)
                            Spacer()
                            Image(systemName: "chevron.right.circle.fill")
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .shadow(radius: 2, y: 1)
                    }
                }
                .padding(.horizontal)
            }
            .safeAreaInset(edge: .bottom) {
                VStack(spacing: 20) {
                    Divider()
                    Text("12 People")
                }
                .background(.regularMaterial)
            }
            .navigationTitle("Cool People")
        }
        .tint(.pink)
    }
}

struct ScrollView_SafeAreaInset_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_SafeAreaInset()
    }
}
