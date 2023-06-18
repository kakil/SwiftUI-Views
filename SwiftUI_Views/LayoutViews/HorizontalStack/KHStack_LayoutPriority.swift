//
//  KHStack_LayoutPriority.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/18/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KHStack_LayoutPriority: View {
    var body: some View {
        VStack(spacing:20) {
            HeaderView("HStack", subtitle: "Layout Priority", desc: "Use the layoutPriority modifier to give priority to the space a view needs to show its content.", back: .orange, textColor: .black)
            Text(".layoutPriority(1) is set on \'Brings Balance\'")
                .font(.body)
            HStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .lineLimit(1)
                Image("SwiftUI")
                    .resizable()
                    .frame(width:80, height: 80)
                Text("Brings Balance")
                    .font(.largeTitle)
                    .layoutPriority(1)
            }
            .padding([.horizontal])
            
            Divider()
            
            HStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .layoutPriority(1)
                Image("SwiftUI")
                    .resizable()
                    .frame(width: 80, height: 80)
                Text("Brings Balance")
                    .font(.largeTitle)
                    .lineLimit(1)
            }
            .padding([.horizontal])
            
            Text(".layoutPriority(1) is set on \'SwiftUI\'")
                .font(.body)
            
        }
        .font(.title)
    }
}

struct KHStack_LayoutPriority_Previews: PreviewProvider {
    static var previews: some View {
        KHStack_LayoutPriority()
            .preferredColorScheme(.dark)
    }
}
