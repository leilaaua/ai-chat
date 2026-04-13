//
//  OnboardingCompletedView.swift
//  AIChatCourse
//
//  Created by leila on 13.04.26.
//

import SwiftUI

struct OnboardingCompletedView: View {
    
    @Environment(AppState.self) private var root
    
    var body: some View {
        VStack {
            Text("Onboarding Compeletd!")
                .frame(maxHeight: .infinity)
            
            Button {
                onFinishButtonPressed()
            } label: {
                Text("Finish")
                    .callToActionButton()
            }
        }
        .padding(16)
    }
    
    func onFinishButtonPressed() {
        root.updateViewState(showTabBarView: true)
    }
    
}

#Preview {
    OnboardingCompletedView()
        .environment(AppState())
}
