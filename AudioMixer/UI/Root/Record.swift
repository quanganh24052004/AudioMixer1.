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
                    .padding(10)
                Spacer()
            }
            .padding(.horizontal, 8)
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
        .background(.neutral01)
        .sheet(isPresented: $isPresentingRecorder) {
            RecordAudioView()
                .presentationDetents([.fraction(0.35)])
        }
    }
}

#Preview {
    Record()
}
