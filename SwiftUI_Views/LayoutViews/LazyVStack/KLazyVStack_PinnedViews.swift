//
//  KLazyVStack_PinnedViews.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/17/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KLazyVStack_PinnedViews: View {
    @State private var teams = MockData.getTeams()
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("LazyVStack",
                       subtitle: "Pinned Views",
                       desc: "LazyVStacks can also have section headers and section footers that can be pinned so they only scroll when the next header/footer comes.",
                       back: .yellow)
            
            ScrollView {
                LazyVStack(spacing: 5, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                    
                    ForEach(teams) { team in
                        Section {
                            ForEach(team.people) { person in
                                Image("\(person.imageName)")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                            }
                        } header: {
                            K1TeamVerticalHeaderView(team: team)
                        } footer: {
                            K1TeamVerticalFooterView(team: team)
                        }//Header and Footer
                    }
                }
            }
            Spacer()
        }
        .font(.title)
    }
}

struct KLazyVStack_PinnedViews_Previews: PreviewProvider {
    static var previews: some View {
        KLazyVStack_PinnedViews()
    }
}

struct K1TeamVerticalHeaderView: View {
    
    var team: MockData.Team
    
    var body: some View {
        
        HStack {
            Text("Team")
            Image(systemName: "\(team.imageName)")
                
        }
        .frame(width: 300, height: 75)
        .background(Rectangle()
            .fill(.yellow)
            .opacity(0.9))
    }
}

struct K1TeamVerticalFooterView: View {
    
    var team: MockData.Team
    
    var body: some View {
        HStack {
            Text("Team Total:")
            Text("\(team.people.count)")
                .fontWeight(.bold)
        }
        .frame(width: 300, height: 50)
        .background(Rectangle()
            .fill(.yellow)
            .opacity(0.9))
    }
}
