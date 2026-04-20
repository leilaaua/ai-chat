//
//  OnboardingIntroView.swift
//  AIChatCourse
//
//  Created by leila on 20.04.26.
//

import SwiftUI

struct OnboardingIntroView: View {
    var body: some View {
        VStack {
            Group {
                Text("Make your own ")
                +
                Text("avatars ")
                    .foregroundStyle(.accent)
                    .fontWeight(.semibold)
                +
                Text("and chat with team!\n\nHave ")
                +
                Text("real conversations")
                    .foregroundStyle(.accent)
                    .fontWeight(.semibold)
                +
                Text("with AI generated responses.")
            }
            .baselineOffset(6)
            .frame(maxHeight: .infinity)
            .padding(24)
            
            NavigationLink {
                OnboardingColorView()
            } label: {
                Text("Get started")
                    .callToActionButton()
            }
        }
        .padding(24)
        .font(.title3)
        .toolbar(.hidden, for : .navigationBar)
    }
}

#Preview {
    NavigationStack {
        OnboardingIntroView()
    }
}
