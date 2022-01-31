// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct Picker_InForm: View {
    @State private var selectedDaysOption = "2"
    var numberOfDaysOptions = ["1", "2", "3", "4", "5"]
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView("", subtitle: "Pickers in Forms",
                           desc: "When you add a Picker to a Form it will want to navigate to another view for selection. The Form should be within a NavigationView or it will look disabled.")
                
                Form {
                    Picker("Frequency", selection: $selectedDaysOption) {
                        ForEach(numberOfDaysOptions, id: \.self) {
                            Text("\($0) Days").tag($0)
                        }
                    }
                }
                .navigationTitle("Picker")
            }
        }
        .font(.title)
    }
}

struct Picker_InForm_Previews: PreviewProvider {
    static var previews: some View {
        Picker_InForm()
    }
}
