// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Picker_Menu: View {
    @State private var youTuberName = "Mark"
    var youTubers = ["Sean", "Chris", "Mark", "Scott", "Paul"]
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Picker",
                       subtitle: "Menu",
                       desc: "You can apply a different picker style to change the picker into a menu.")
            
            Spacer()
            
            Text("Who do you want to watch today?")
                .padding(.bottom, 0)
            
            Picker(selection: $youTuberName, label: Text("Who do you want to watch")) {
                ForEach(youTubers, id: \.self) { name in
                    Text(name)
                }
            }
            .pickerStyle(.menu)
            
            Spacer()
        }
        .font(.title)
    }
}

struct Picker_Menu_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Menu()
    }
}
