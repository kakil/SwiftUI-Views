//
//  KZStack_BackgroundColor_Solution.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/26/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KZStack_BackgroundColor_Solution: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack {
                Text("ZStack")
                    .font(.largeTitle)
                Text("Color Ignores Safe Area Edges")
                    .foregroundColor(.white)
                Text("To solve the problem, you want just the color (bottom layer) to ignore the safe area edges and fill the screen.  Other layers above it will stay within the Safe Area.")
                    .padding()
                    .frame(maxWidth:.infinity)
                    .background(.green)
                Spacer()
            }
            .font(.title)
        }
    }
}

struct KZStack_BackgroundColor_Solution_Previews: PreviewProvider {
    static var previews: some View {
        KZStack_BackgroundColor_Solution()
    }
}
