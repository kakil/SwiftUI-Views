//
//  KHStack_Intro.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/18/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KHStack_Intro: View {
    var body: some View {
        VStack(spacing:40) {
            HeaderView("HStack",
                       subtitle: "Introduction",
                       desc: "An HStack will horizontally arrange other views within it.",
                       back: .orange,
                       textColor: .black)
            HStack {
                Text("View 1")
                Text("View 2")
                Text("View 3")
            }
        }
        .font(.title)
    }
}

struct KHStack_Intro_Previews: PreviewProvider {
    static var previews: some View {
        KHStack_Intro()
            .preferredColorScheme(.dark)
    }
}
