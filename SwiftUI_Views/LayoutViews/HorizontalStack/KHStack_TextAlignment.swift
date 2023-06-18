//
//  KHStack_TextAlignment.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/18/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KHStack_TextAlignment: View {
    var body: some View {
        VStack(spacing:40) {
            HeaderView("HStack",
                       subtitle: "Text Alignment",
                       desc: "HStack have another alignment option to help better align the bottom of text.",
                       back: .orange,
                       textColor: .black)
            HStack (alignment: .bottom){
                Text("Hello")
                Text("amazing")
                    .font(.largeTitle)
                Text("developer!")
            }
            .font(.body)
            
            DescView(desc: "Notice the bottom of the text isn't really aligned above.  use firstTextBaseline or lastTextBaseline instead:", back: .orange, textColor: .black)
            HStack(alignment: .firstTextBaseline) {
                Text("Hello")
                Text("amazing")
                    .font(.largeTitle)
                Text("developer!")
            }
            .font(.body)
            
        }
        .font(.title)
    }
}

struct KHStack_TextAlignment_Previews: PreviewProvider {
    static var previews: some View {
        KHStack_TextAlignment()
            .preferredColorScheme(.dark)
    }
}
