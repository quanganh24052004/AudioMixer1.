//
//  RecordAudioView.swift
//  AudioMixer
//
//  Created by EF2025 on 18/8/25.
//

import SwiftUI

struct RecordAudioView: View {
    var body: some View {
        VStack {
            Text("Tên file")
                .padding()
            Spacer()
            ZStack {
                Circle()
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: 72, height: 72)
                Rectangle()
                    .font(.title)
                    .foregroundColor(.red)
                    .frame(width: 32, height: 32)
                    .cornerRadius(8)
            }
        }

    }
}

#Preview {
    Record()
}
