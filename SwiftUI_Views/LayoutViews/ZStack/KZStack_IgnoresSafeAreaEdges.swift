//
//  KZStack_IgnoresSafeAreaEdges.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/26/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KZStack_IgnoresSafeAreaEdges: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing:20) {
                Text("ZStack")
                    .font(.largeTitle)
                Text("Ingnores Safe Area Edges")
                    .foregroundColor(.white)
                Text("Ingoring the Safe Areas edges will extend a view to fill the whole scene.")
                    .frame(maxWidth:.infinity)
                    .background(.green)
                
            }
            .font(.title)
        }
        .ignoresSafeArea(.all)
    }
}

struct KZStack_IgnoresSafeAreaEdges_Previews: PreviewProvider {
    static var previews: some View {
        KZStack_IgnoresSafeAreaEdges()
    }
}
