// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct DisclosureGroup_FeedbackTicket: View {
    @State private var settingsExpanded = true
    
    var body: some View {
        VStack {
            DisclosureGroup("Group", isExpanded: $settingsExpanded) {
                VStack {
                    Text("Using accentColor. Notice the chevron is purple.")
                }
            }
            .font(.title)
            .padding()
            .accentColor(.purple)
            
            DisclosureGroup("Group", isExpanded: $settingsExpanded) {
                VStack {
                    Text("Using tint. Notice the chevron went back to blue.")
                }
            }
            .font(.title)
            .padding()
            .tint(.purple)
        }
    }
}

struct DisclosureGroup_FeedbackTicket_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroup_FeedbackTicket()
    }
}
