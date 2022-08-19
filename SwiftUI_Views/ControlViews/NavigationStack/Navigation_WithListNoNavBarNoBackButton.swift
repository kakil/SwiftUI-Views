//  Created by Mark Moeykens on 2/22/20.
//  Copyright © 2020 Mark Moeykens. All rights reserved.

import SwiftUI

struct Navigation_WithListNoNavBarNoBackButton: View {
    @State var books = ["The Way of Kings", "Words of Radiance", "Oathbringer"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(books, id: \.self) { book in
                        NavigationLink(destination: BookDetail_NoBack(bookItem: book)) {
                            Text(book).font(Font.system(size: 24)).padding()
                        }
                    }
                } header: {
                    Text("Brandon Sanderson Books")
                        .font(.title)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Book List") // Your back button text
            .navigationBarHidden(true)
        }
    }
}

struct BookDetail_NoBack: View {
    @Environment(\.dismiss) var dismiss
    var bookItem: String!
    
    var body: some View {
        VStack {
            Text("Book Details").font(.title)
                .frame(maxWidth: .infinity).padding()
                .background(Color("Theme3ForegroundColor"))
                .foregroundColor(Color("Theme3BackgroundColor"))
            Spacer()
            Text(bookItem).font(.title)
            Spacer()
            Button(action: {
                dismiss()
            }) {
                HStack {
                    Image(systemName: "arrow.left.circle")
                    Text("Go Back")
                }
            }
            Spacer()
        }
        .navigationTitle(bookItem)
        .navigationBarHidden(true)
    }
}

struct Navigation_WithListNoNavBarNoBackButton_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_WithListNoNavBarNoBackButton()
//        BookDetail_NoBack(bookItem: "Test Book")
    }
}
