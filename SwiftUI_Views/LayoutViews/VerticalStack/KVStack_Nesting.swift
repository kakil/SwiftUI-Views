//
//  KVStack_Nesting.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/16/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KVStack_Nesting: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("VStack",
                       subtitle: "Nesting",
                       desc: "A VStack can be nested within another VStack when laying out views.",
                       back: .blue,
                       textColor: .white)
            VStack {
                Text("Hello, World!")
                Divider()
                Text("This can be helpful.  Why?")
                Divider()
                Text("More than 10 views creates an error.")
            }
            .padding()
            .foregroundColor(.white)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.blue)
            )
            .padding()
        }
        .font(.title)
        
    }
}

struct KVStack_Nesting_Previews: PreviewProvider {
    static var previews: some View {
        KVStack_Nesting()
    }
}
