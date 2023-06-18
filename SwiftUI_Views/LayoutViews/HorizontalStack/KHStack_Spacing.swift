//
//  KHStack_Spacing.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/18/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KHStack_Spacing: View {
    var body: some View {
        VStack(spacing:40) {
            HeaderView("HStack",
                       subtitle: "Spacing",
                       desc: "HStack Initializer allows you to set the spacing between all the views inside the HStack.",
                       back: .orange,
                       textColor: .black)
            Text("Default Spacing")
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            Text("Spacing: 100")
            HStack(spacing:100) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            
        }
        .font(.title)
    }
}

struct KHStack_Spacing_Previews: PreviewProvider {
    static var previews: some View {
        KHStack_Spacing()
            .preferredColorScheme(.dark)
    }
}
