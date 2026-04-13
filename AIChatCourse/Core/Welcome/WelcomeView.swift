//
//  WelcomeView.swift
//  AIChatCourse
//
//  Created by leila on 13.04.26.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome")
                    .frame(maxHeight: .infinity)
                
                NavigationLink {
                    OnboardingCompletedView()
                } label: {
                    Text("Get started")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(.accent)
                        .cornerRadius(16)
                }
            }
            .padding(16)
        }
    }
}

#Preview {
    WelcomeView()
}
