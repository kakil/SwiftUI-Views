//
//  KLazyVStack_Alignment.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/17/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KLazyVStack_Alignment: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("LazyVStack",
                       subtitle: "Alignment",
                       desc: "Since LazyVStacks are pushout views (horizontally) the alignment parameter could be useful.",
                       back: .yellow)
            
            Text("Leading")
                .font(.title)
            LazyVStack(alignment: .leading, spacing: 20.0) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2)
            .font(.title)
            
            Text("Trailing")
                .font(.title)
            
            LazyVStack(alignment: .trailing, spacing: 20) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2)
            .font(.title)
            
            
        }
        .font(.title)
    }
}

struct KLazyVStack_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        KLazyVStack_Alignment()
    }
}
