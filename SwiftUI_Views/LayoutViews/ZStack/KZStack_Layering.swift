//
//  KZStack_Layering.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/26/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KZStack_Layering: View {
    var body: some View {
        ZStack {
            Color.white
            
            VStack (spacing:20){
                HeaderView("ZStack", subtitle: "Layering & Aligning", desc: "ZStacks are great for layering views. For example, putting text on top of an image.", back: .green)
                ZStack {
                    Image("yosemite_large")
                        .resizable()
                        .scaledToFit()
                    
                    Rectangle()
                        .fill(.white.opacity(0.6))
                        .frame(maxWidth:.infinity, maxHeight: 50)
                    
                    Text("Yosemite National Park")
                }
                
                DescView(desc: "But what if you wanted to have all the views align to the bottom?", back: .green, textColor: .white)
                
            }
            .font(.title)
        }
    }
}

struct KZStack_Layering_Previews: PreviewProvider {
    static var previews: some View {
        KZStack_Layering()
    }
}
