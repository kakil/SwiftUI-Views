//  Created by Mark Moeykens on 9/1/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.

import SwiftUI

struct Button_WithPhotos: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("Button", subtitle: "With Images",
                       desc: "Buttons work fine with the SF Symbols. But what if you wanted to use a photo?", back: .purple)
            
            Button(action: {}) {
                Image("yosemite")
                    .cornerRadius(40)
            }
        }
        .font(.title)
    }
}

struct Button_BitmapImages_Previews: PreviewProvider {
    static var previews: some View {
        Button_WithPhotos()
    }
}
