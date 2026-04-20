//
//  OnboardingCompletedView.swift
//  AIChatCourse
//
//  Created by leila on 13.04.26.
//

import SwiftUI

struct OnboardingCompletedView: View {
    
    @Environment(AppState.self) private var root
    @State private var isComplitingProfileSetup: Bool = false
    var selectedColor: Color = .orange
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Setup Complete!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(selectedColor)
            
            Text("We've set up your profile and you're ready to start chatting")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .frame(maxHeight: .infinity)
        .safeAreaInset(edge: .bottom, content: {
            ctaButton
        })
        .padding(24)
        .toolbar(.hidden, for: .navigationBar)
    }
    
    func onFinishButtonPressed() {
        Task {
            isComplitingProfileSetup = true
            try await Task.sleep(for: .seconds(3))
            isComplitingProfileSetup = false
//            try await saveUserProfile(color: selectedColor)
            
            root.updateViewState(showTabBarView: true)
        }
    }
    
    private var ctaButton: some View {
        Button {
            onFinishButtonPressed()
        } label: {
            ZStack {
                if isComplitingProfileSetup {
                    ProfileView()
                        .tint(.white)
                } else {
                    Text("Finish")
                }
            }
            .callToActionButton()
        }
        .disabled(isComplitingProfileSetup)
    }
}

#Preview {
    OnboardingCompletedView()
        .environment(AppState())
}
