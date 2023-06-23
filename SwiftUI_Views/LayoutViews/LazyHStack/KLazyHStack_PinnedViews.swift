//
//  KLazyHStack_PinnedViews.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/23/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KLazyHStack_PinnedViews: View {
    @State private var teams = MockData.getTeams()
    
    var body: some View {
        VStack {
            HeaderView("LazyHStack", subtitle: "Pinned Views", desc: "LazyHStacks can also have section headers and section footers that can be pinned so they only scroll when the next header/footer comes.", back: .yellow)
            
            ScrollView (.horizontal) {
                LazyHStack (spacing: 5, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                    ForEach(teams) {team in
                        Section {
                            ForEach(team.people) { person in
                                Image("\(person.imageName)")
                                    .resizable()
                                    .frame(width: 100)
                                    .padding(.bottom, 8)
                            }
                        } header: {
                            TeamHeaderView(team: team)
                        } footer: {
                            TeamFooterView(team: team)
                        }
                    }
                }
            }
            .frame(height: 108)
            
            Spacer()
        }
        .font(.title)
    }
}

struct KLazyHStack_PinnedViews_Previews: PreviewProvider {
    static var previews: some View {
        KLazyHStack_PinnedViews()
    }
}
