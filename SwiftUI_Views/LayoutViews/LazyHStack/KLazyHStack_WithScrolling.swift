//
//  KLazyHStack_WithScrolling.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/23/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KLazyHStack_WithScrolling: View {
    @State private var whatAppeared = ""
    
    var body: some View {
        VStack {
            HeaderView("LazyHStack", subtitle: "With ScrollView", desc: "The LazyHStack is best used with many views that scroll off the screen. \"Lazy\" means views off the screen are not created unless shown.  This increases performance.", back: .yellow)
            Spacer()
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 20) {
                    ForEach(0 ..< 51) { item in
                        Image(systemName: "\(item).circle")
                            .onAppear {
                                whatAppeared = "\(item).circle"
                            }
                    }
                }
                
            }
            .font(.largeTitle)
            .padding()
            
            Text("\(whatAppeared)")
            
            Spacer()
            
        }
        .font(.title)
    }
}

struct KLazyHStack_WithScrolling_Previews: PreviewProvider {
    static var previews: some View {
        KLazyHStack_WithScrolling()
    }
}
