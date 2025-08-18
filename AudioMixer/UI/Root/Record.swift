//
//  record.swift
//  AudioMixer
//
//  Created by EF2025 on 18/8/25.
//

import SwiftUI

struct Record: View {
    @State private var isPresentingRecorder = false

    var body: some View {
        VStack (spacing: 8) {
            HStack {
                Text("All record")
                    .font(Font.largeTitle)
                    .fontWeight(Font.Weight.bold)
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
            
            Button(action: {
                // Action record
                isPresentingRecorder = true
            }) {
                ZStack {
                    Circle()
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                    Circle()
                        .font(.title)
                        .foregroundColor(.red)
                        .frame(width: 64, height: 64)
                }
            }
            .padding(.bottom, 16)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .sheet(isPresented: $isPresentingRecorder) {
            RecordAudioView()
                .presentationDetents([.fraction(0.35)])
        }
    }
}

#Preview {
    Record()
}
