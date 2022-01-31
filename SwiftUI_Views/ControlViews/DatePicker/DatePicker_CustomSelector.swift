// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct DatePicker_CustomSelector: View {
    @State private var date = Date()
    
    var body: some View {
        VStack(spacing: 30) {
            HeaderView("DatePicker",
                       subtitle: "Custom Selector",
                       desc: "At this time we can not customize the color of the text or background. Here are some other options though.", back: .green)
            
            DatePicker("Today", selection: $date, displayedComponents: .date)
                .labelsHidden()
                .background(RoundedRectangle(cornerRadius: 8, style: .continuous)
                                .fill(Color.green).opacity(0.2))
            
            DescView(desc: "What does NOT work:", back: .green)
            Form {
                DatePicker("accentColor", selection: $date, displayedComponents: .date)
                    .accentColor(.green)
                
                DatePicker("foregroundColor", selection: $date, displayedComponents: .date)
                    .foregroundColor(.green)
                
                DatePicker("foregroundStyle", selection: $date, displayedComponents: .date)
                    .foregroundStyle(.green, .green, .green)
                
                DatePicker("tint", selection: $date, displayedComponents: .date)
                    .tint(.green)
            }
            .font(.body)
        }
        .font(.title)
    }
}

struct DatePicker_CustomSelector_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker_CustomSelector()
    }
}
