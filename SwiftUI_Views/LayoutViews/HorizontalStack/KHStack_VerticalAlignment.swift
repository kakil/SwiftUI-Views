//
//  KHStack_VerticalAlignment.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/18/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KHStack_VerticalAlignment: View {
    var body: some View {
        VStack {
            HeaderView("HStack", subtitle: "Vertical Alignment", desc: "By default, views within an HStack are vertically aligned in the center.", back: .orange, textColor: .black)
                .font(.title)
                .frame(height: 250)
            HStack {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing")
                    .padding(.trailing)
            }
            .border(.orange)
            
            HStack(alignment: .top) {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Top")
                Spacer()
                Text("Trailing")
            }
            .border(.orange)
            
            HStack(alignment: .bottom) {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Bottom")
                Spacer()
                Text("Trailing")
            }
            .border(.orange)
        }
        
    }

}

struct KHStack_VerticalAlignment_Previews: PreviewProvider {
    static var previews: some View {
        KHStack_VerticalAlignment()
            .preferredColorScheme(.dark)
    }
}
