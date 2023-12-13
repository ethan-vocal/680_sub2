//
//  AudioManager.swift
//  680_sub2
//
//  Created by ethan vocal on 12/13/23.
//

import Foundation
import AVFoundation
// to keep the code more organized, i moved this into its own file.
// lets implement an audio soundtrack now. I used this
// article as a guide: https://stackoverflow.com/questions/31422014/play-background-music-in-app

class AudioManager: ObservableObject {
    var audioPlayer: AVAudioPlayer?

    // to stop, call .stop() and set to nil
    func stopBackgroundMusic() {
        audioPlayer?.stop()
        audioPlayer = nil
    }

}
