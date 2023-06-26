//
//  KZStack_Aligning.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/26/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KZStack_Aligning: View {
    var body: some View {
        VStack(spacing:20) {
            HeaderView("ZStack", subtitle: "Aligning", desc: "The ZStack allows you to align all the views within it.", back: .green)
            
            ZStack (alignment:.topLeading){
                Image("yosemite_large")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .fill(.white.opacity(0.6))
                    .frame(maxWidth:.infinity, maxHeight: 60)
                
                Text("Yosemite National Park")
                    .font(.title)
                    .padding()
            }
            
            ZStack (alignment: .bottomTrailing) {
                Image("yosemite_large")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .fill(.white.opacity(0.6))
                    .frame(maxWidth:.infinity, maxHeight: 60)
                
                Text("Yosemite National Park")
                    .font(.title)
                    .padding()
            }
        }
        .font(.title)
    }
}

struct KZStack_Aligning_Previews: PreviewProvider {
    static var previews: some View {
        KZStack_Aligning()
    }
}
