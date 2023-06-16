//
//  KVStack_Alignment.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/16/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KVStack_Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("VStack")
                .font(.largeTitle)
            Text("Alignment")
                .font(.title)
                .foregroundColor(.gray)
            Text("By default, views in a VStack are center aligned.")
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(.blue)
                .font(.title)
            VStack(alignment: .leading, spacing: 40) {
                Text("Leading Alignment")
                    .font(.title)
                Divider()
                Image(systemName: "arrow.left")
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundColor(.blue)
            .padding()
            
            VStack(alignment: .trailing, spacing: 40) {
                Text("Trailing Alignment")
                    .font(.title)
                Divider()
                Image(systemName: "arrow.right")
            }
            .padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundColor(.blue)
            .padding()
            
                
        }
    }
}

struct KVStack_Alignment_Previews: PreviewProvider {
    static var previews: some View {
        KVStack_Alignment()
    }
}
