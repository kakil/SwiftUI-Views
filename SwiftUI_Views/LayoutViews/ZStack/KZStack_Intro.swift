//
//  KZStack_Intro.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/26/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KZStack_Intro: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                Text("Introduction")
                    .foregroundColor(.white)
                Text("ZStacks are great for setting a background color.")
                    .padding()
                    .frame(maxWidth:.infinity)
                    .background(.green)
                Text("But notice the Color stops at the Safe Areas (white areas on top and bottom).")
                    .padding()
                    .frame(maxWidth:.infinity)
                    .background(.green)
            }
            .font(.title)
        }
    }
}

struct KZStack_Intro_Previews: PreviewProvider {
    static var previews: some View {
        KZStack_Intro()
    }
}
