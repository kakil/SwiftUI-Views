//  Copyright © 2020 Mark Moeykens. All rights reserved. | @BigMtnStudio

import SwiftUI

@main
struct SwiftUI_ViewsApp: App {
    var body: some Scene {
        WindowGroup {
            // This is the starting point.
            // Switch out which view you want to see first.
            CompositingGroup_OneView()
                .onAppear {
                     // Hide layout constraint error messages in the debugger console so we can see other info more clearly
                     UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                 }
        }
    }
}
