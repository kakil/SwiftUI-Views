//
//  KLazyVStak_Intro.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/17/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KLazyVStak_Intro: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("VStack")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("When using the LazyVStack by itself, you won't notice much of a difference from the VStack.")
                .padding()
                .frame(maxWidth: .infinity)
                .background(.yellow)
                .font(.title)
            Text("LazyVStack")
                .font(.title)
            LazyVStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .font(.title)
            .border(.red, width: 2)
            
            Text("VStack")
                .font(.title)
            VStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .font(.title)
            .border(.red, width: 2)
            
            Text("Notice the LazyVStack pushes out horizontally. (No Spacers being used here.")
                .padding()
                .frame(maxWidth:.infinity)
                .background(.yellow)
                .font(.title)
                
        }
    }
}

struct KLazyVStak_Intro_Previews: PreviewProvider {
    static var previews: some View {
        KLazyVStak_Intro()
    }
}
