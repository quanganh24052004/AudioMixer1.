//
//  record.swift
//  AudioMixer
//
//  Created by EF2025 on 18/8/25.
//

import SwiftUI

struct PlayMusic: View {
    var body: some View {
        VStack (spacing: 8) {
            HStack {
                Text("All music")
                    .font(Font.largeTitle)
                    .fontWeight(.bold)
                    .padding(8)
                Spacer()
            }
            List {
                AudioCell()
                AudioCell()
                AudioCell()
                AudioCell()
            }
            .listStyle(.plain)
            .padding(.horizontal, -8) // Remove side padding
            Spacer()
        }

    }
}

#Preview {
    PlayMusic()
}
