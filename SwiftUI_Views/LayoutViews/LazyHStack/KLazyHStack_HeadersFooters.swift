//
//  KLazyHStack_HeadersFooters.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/23/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KLazyHStack_HeadersFooters: View {
    @State private var teams = MockData.getTeams()
    
    var body: some View {
        VStack {
            HeaderView("LazyHStack", subtitle: "Headers & Footers", desc: "Using the Section view, you can add a header and footer inside a LazyHStack.", back: .yellow)
            ScrollView (.horizontal) {
                LazyHStack (spacing: 5) {
                    ForEach(teams) { team in
                        Section {
                            ForEach(team.people) { person in
                                Image("\(person.imageName)")
                                    .resizable()
                                    .frame(width:100)
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

struct KLazyHStack_HeadersFooters_Previews: PreviewProvider {
    static var previews: some View {
        KLazyHStack_HeadersFooters()
    }
}
