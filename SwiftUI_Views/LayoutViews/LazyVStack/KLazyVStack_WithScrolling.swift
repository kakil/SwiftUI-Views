//
//  KLazyVStack_WithScrolling.swift
//  SwiftUI_Views
//
//  Created by Kitwana Akil on 6/17/23.
//  Copyright © 2023 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct KLazyVStack_WithScrolling: View {
    @State private var teams = MockData.getTeams()
    
    var body: some View {
        VStack (spacing: 10){
            HeaderView("LazyVStack", subtitle: "With ScrollView", desc: "The LazyVStack is best used with many views that scroll off the screen. \"Lazy\" means views off the screen are not created unless shown.  This increases performance.", back:.yellow)
            
            ScrollView {
                LazyVStack(spacing: 5) {
                    ForEach(teams) { team in
                        Section {
                            ForEach(team.people) { person in
                                Image("\(person.imageName)")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                            }
                        } header: {
                            KTeamVerticalHeaderView(team: team)
                        } footer: {
                            KTeamVerticalFooterView(team: team)
                        }
                    }
                }
            }
            Spacer()
        }
        .font(.title)
        
    }
    
}

struct KLazyVStack_WithScrolling_Previews: PreviewProvider {
    static var previews: some View {
        KLazyVStack_WithScrolling()
    }
}

struct KTeamVerticalHeaderView: View {
    var team: MockData.Team
    
    var body: some View {
        HStack {
            Text("Team")
            Image(systemName: team.imageName)
            
        }
        .padding()
        .frame(width: 300, height: 75)
        .background(Rectangle()
            .fill(.yellow)
            .opacity(0.9))
        .font(.largeTitle)
        
        
    }
}

struct KTeamVerticalFooterView: View {
    var team: MockData.Team
    
    var body: some View {
        HStack {
            Text("Team Total:")
            Text("\(team.people.count)")
                .fontWeight(.bold)
            
        }
        .padding()
        .frame(width: 300, height: 50)
        .background(Rectangle()
            .fill(.yellow)
            .opacity(0.9))
        .font(.title)
    }
}
