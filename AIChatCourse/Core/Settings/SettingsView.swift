//
//  SettingsView.swift
//  AIChatCourse
//
//  Created by leila on 13.04.26.
//

import SwiftUI

struct SettingsView: View {
    @Environment(AppState.self) private var appState
    
    var body: some View {
        NavigationStack {
            List {
                Button {
                    
                } label: {
                    Text("Sign out")
                }
            }
            .navigationTitle("Settings")
        }
    }
    
    func onSignOutPressed() {
        // do some logic to sign user out of app!
        appState.updateViewState(showTabBarView: false)
    }
}

#Preview {
    SettingsView()
}
