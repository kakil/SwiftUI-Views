//
//  KHStack_Customizing.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/18/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KHStack_Customizing: View {
    var body: some View {
        VStack(spacing:20) {
            HeaderView("HStack", subtitle: "Customizing", desc: "HStack are views that can have modifiers applied to them just like any other view.", back: .orange, textColor: .black)
            Text("Leading Middle Trailing")
                .padding()
                .border(.orange)
            HStack(spacing:10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            
            HStack(spacing: 20) {
                Image(systemName: "a.circle.fill")
                Image(systemName: "b.circle.fill")
                Image(systemName: "c.circle.fill")
                Image(systemName: "d.circle.fill")
                Image(systemName: "e.circle.fill")
            }
            .padding()
            .background(.orange)
            .cornerRadius(10)
            .font(.largeTitle)
        }
        .font(.title)
    }
}

struct KHStack_Customizing_Previews: PreviewProvider {
    static var previews: some View {
        KHStack_Customizing()
            .preferredColorScheme(.dark)
    }
}
