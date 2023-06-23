//
//  KLazyHStack_Alignment.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/23/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KLazyHStack_Alignment: View {
    var body: some View {
        VStack {
            HeaderView("LazyHStack", subtitle: "Alignment", desc: "Since LazyHStacks are pushout views (vertically) the alignment parameter could be useful.", back: .yellow)
            Text("Top")
            LazyHStack(alignment: .top, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2)
            
            Text("Bottom")
            LazyHStack(alignment: .bottom, spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2)
        }
        .font(.title)
    }
}

struct KLazyHStack_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        KLazyHStack_Alignment()
    }
}
