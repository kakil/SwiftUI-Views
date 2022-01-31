//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

struct NavLink_IsDetailLink: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HeaderView("",
                           subtitle: "isDetailLink",
                           desc: "By default, when you navigate on an iPad, your first view will be on the left and your new view will be on the right. The view on the right is called the 'Detail'. You can change this behavior by using the isDetailLink modifier.",
                           back: Color("Theme3ForegroundColor"),
                           textColor: Color("Theme3BackgroundColor"))
                
                NavigationLink(
                    destination: DetailLinkView(),
                    label: {
                        Text("Show Detail Inside")
                    })
                    .isDetailLink(true)
            }
            .navigationTitle("NavigationLink")
            .font(.title)
        }
    }
}

struct DetailLinkView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("",
                       subtitle: "isDetailLink",
                       desc: "When isDetailLink is set to false, navigation happens within the same pane.",
                       back: Color("Theme3ForegroundColor"),
                       textColor: Color("Theme3BackgroundColor"))
        }
        .navigationTitle("Detail View")
        .font(.title)
    }
}

struct NavLink_IsDetailLink_Previews: PreviewProvider {
    static var previews: some View {
        NavLink_IsDetailLink()
    }
}
