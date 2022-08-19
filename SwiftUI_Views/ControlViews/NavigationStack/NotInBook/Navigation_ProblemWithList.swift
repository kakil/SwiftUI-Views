// Copyright © 2021 Big Mountain Studio. All rights reserved. Twitter: @BigMtnStudio
// The bug here is that SwiftUI automatically pops the 3rd detail view. Feedback: FB9795803

import SwiftUI

struct MyListDetailView: View {
    @Binding var showDetail: Bool
    
    var body: some View {
        List {
            NavigationLink("Detail 2", isActive: .constant(showDetail)) {
                VStack {
                    Text("Detail 3")
                        .font(.title)
                    
                    Text("showDetail: \(showDetail ? "true" : "false")")
                }
                .onAppear {
                    print("Detail 3: \(showDetail)")
                }
                .onDisappear {
                    print("Detail 3: \(showDetail)")
                }
                .navigationBarTitle("Detail 3")
            }
        }
        .onAppear {
            print("Detail 1: \(showDetail)")
        }
        .onDisappear {
            print("Detail 1: \(showDetail)")
        }
        .navigationBarTitle("Detail 2")
    }
}

struct MyList: View {
    @Binding var levels: [Bool]
    
    var body: some View {
        List {
            NavigationLink("Detail 1", isActive: $levels[0]) {
//                MyListDetailView(showDetail: .constant(levels[1]))
                MyListDetailView(showDetail: $levels[1])
            }
        }
        .overlay(
            Button("Navigate To Detail 3") {
                levels = [true, true]
            }
        )
        .navigationBarTitle("Detail 1")
    }
}

struct Navigation_ProblemWithList: View {
    @State var levels = [false, false]
    
    var body: some View {
        NavigationView {
            MyList(levels: $levels)
        }
        .navigationViewStyle(.stack)
        .overlay(Text(levels.map { $0 ? "t " : "f "}.joined()), alignment: .bottom)
    }
}

struct Navigation_ProblemWithList_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_ProblemWithList()
    }
}
