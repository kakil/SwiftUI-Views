//
//  KLazyHStack_Intro.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/23/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KLazyHStack_Intro: View {
    var body: some View {
        VStack {
            HeaderView("LazyHStack", subtitle: "Introduction", desc: "When using the LazyHStack by itself, you won't notice much of a difference from the HStack.", back: .yellow)
                .layoutPriority(1)
            
            Text("LazyHStack")
            LazyHStack (spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2.0)
            
            Text("HStack")
            HStack (spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2.0)
            
            Text("Notice the LazyHStack pushes out vertically. (No Spacers being used here.")
                .frame(maxWidth:.infinity)
                .padding()
                .foregroundColor(.black)
                .background(.yellow)
                
                
        }
        .font(.title)
    }
}

struct KLazyHStack_Intro_Previews: PreviewProvider {
    static var previews: some View {
        KLazyHStack_Intro()
    }
}
