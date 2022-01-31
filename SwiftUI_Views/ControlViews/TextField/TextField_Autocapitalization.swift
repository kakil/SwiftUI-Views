//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct TextField_Autocapitalization: View {
    @State private var textFieldData1 = ""
    @State private var textFieldData2 = ""
    @State private var textFieldData3 = ""
    @State private var textFieldData4 = ""

    var body: some View {
        VStack(spacing: 20) {
            HeaderView("TextField",
                       subtitle: "Autocapitalization",
                       desc: "When a user starts typing into a TextField, the first word in each sentence is always capitalized. You can change this behavior with the autocapitalization modifier.", back: .orange)
                .font(.title)

            Text("Autocapitalization: Words")
            TextField("First & Last Name", text: $textFieldData1)
                .autocapitalization(.words)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Text("Autocapitalization: Sentences (default)")
            TextField("Bio", text: $textFieldData2)
                .autocapitalization(.sentences)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Text("Autocapitalization: None")
            TextField("Web Address", text: $textFieldData3)
                .autocapitalization(.none)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Text("Autocapitalization: allCharacters")
            TextField("Country Code", text: $textFieldData4)
                .autocapitalization(.allCharacters)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
        }
    }
}

struct TextField_Autocapitalization_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Autocapitalization()
    }
}
