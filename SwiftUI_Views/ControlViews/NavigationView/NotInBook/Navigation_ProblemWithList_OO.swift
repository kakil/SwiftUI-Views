// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio
// The bug here is that SwiftUI automatically pops the 3rd detail view. Feedback: FB9795803

import SwiftUI

struct ListDetailLevelTwo: View {
//    @Binding var showDetail: Bool
//    var showDetail: Bool
    @EnvironmentObject var nav: Navigator

    var body: some View {
        List {
            NavigationLink("Detail 2", isActive: $nav.levels[1]) {
                VStack {
                    Text("Detail 3")
                        .font(.title)
                    
                    Text("showDetail: \(nav.levels[1] ? "true" : "false")")
                }
                .navigationBarTitle("Detail 3")
            }
        }
        .navigationBarTitle("Detail 2")
    }
}

struct ListDetailLevelOne: View {
    @EnvironmentObject var nav: Navigator

    var body: some View {
        List {
            NavigationLink("Detail 1", isActive: $nav.levels[0]) {
                ListDetailLevelTwo()
            }
        }
        .overlay(
            Button("Navigate To Detail 3") {
                nav.levels = [true, true]
            }
        )
        .navigationBarTitle("Detail 1")
    }
}

class Navigator: ObservableObject {
    @Published var levels = [false, false]
}

struct Navigation_ProblemWithList_OO: View {
    @EnvironmentObject var nav: Navigator
    
    var body: some View {
        NavigationView {
            ListDetailLevelOne()
        }
        .navigationViewStyle(.stack)
        .overlay(Text(nav.levels.map { $0 ? "t " : "f "}.joined()), alignment: .bottom)
    }
}

struct Navigation_ProblemWithList_OO_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_ProblemWithList_OO()
            .environmentObject(Navigator())
    }
}
