//
//  KZStack_BackgroundColor_Problem.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/26/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KZStack_BackgroundColor_Problem: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing:20) {
                Text("ZStack")
                    .font(.largeTitle)
                Text("Ignores Safe Area Edges")
                    .foregroundColor(.white)
                Text("Having the ZStack edges ignoring the safe area edges might be a mistake. You notice that the top Text view is completely under the notch.")
                    .padding()
                    .frame(maxWidth:.infinity)
                    .background(.green)
                Spacer()
            }
            .font(.title)
        }
        .ignoresSafeArea()
    }
}

struct KZStack_BackgroundColor_Problem_Previews: PreviewProvider {
    static var previews: some View {
        KZStack_BackgroundColor_Problem()
    }
}
