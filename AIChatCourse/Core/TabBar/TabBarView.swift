//
//  TabBarView.swift
//  AIChatCourse
//
//  Created by leila on 13.04.26.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        NavigationStack {
            TabView {
                ExploreView()
                    .tabItem {
                        Label("Explore", systemImage: "eyes")
                    }
                
                ChatsView()
                    .tabItem {
                        Label("Chats", systemImage: "bubble.left.and.bubble.right.fill")
                    }
                
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
            }
            .navigationBarBackButtonHidden()
        }
        
    }
}

#Preview {
    TabBarView()
}
