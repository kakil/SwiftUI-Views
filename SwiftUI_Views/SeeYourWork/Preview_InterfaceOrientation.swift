//  Copyright © 2021 Mark Moeykens. All rights reserved. | @BigMtnStudio
// Book note: Can set it 2 ways.

import SwiftUI

struct Preview_InterfaceOrientation: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("Previews",
                       subtitle: "PreviewInterfaceOrientation",
                       desc: "Use previewInterfaceOrientation to change your preview to landscape mode (right or left).")
            
        }
        .font(.title)
    }
}

struct Preview_InterfaceOrientation_Previews: PreviewProvider {
    static var previews: some View {
        Preview_InterfaceOrientation()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
