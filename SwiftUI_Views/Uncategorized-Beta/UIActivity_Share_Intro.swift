// Copyright © 2022 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio

import SwiftUI

struct UIActivity_Share_Intro: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("UIActivityViewController",
                       subtitle: "Introduction",
                       desc: "Here is one way to present the system share sheet.")
            
            Button {
                let url = URL(string: "https://bigmountainstudio.com")
                let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)

                UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true, completion: nil)
            } label: {
                Label("Share", systemImage: "square.and.arrow.up")
            }
        }
        .font(.title)
        
    }
}

struct UIActivity_Share_Intro_Previews: PreviewProvider {
    static var previews: some View {
        UIActivity_Share_Intro()
    }
}
