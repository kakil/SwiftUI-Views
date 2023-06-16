//
//  KVStack_Spacing.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/16/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KVStack_Spacing: View {
    var body: some View {
        VStack(spacing: 80) {
            Text("VStack")
                .font(.largeTitle)
            Text("Spacing")
                .font(.title)
                .foregroundColor(.gray)
            Text("The VStack initializer allows you to set the spacing between all the views inside the VStack.")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .font(.title)
            Image(systemName: "arrow.up.and.down.circle.fill")
                .font(.largeTitle)
            Text("The spacing here between all of these views is 80")
                .font(.title)
                .padding()
            
        }
        
    }
}

struct KVStack_Spacing_Previews: PreviewProvider {
    static var previews: some View {
        KVStack_Spacing()
    }
}
