//
//  NoiseMaker.swift
//  NoiseMaker
//
//  Created by Daniel Bermudez on 3/14/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
import AVFoundation
class Noisemaker{
    private var guitarPlayer : AVAudioPlayer?
    private var applausePlayer : AVAudioPlayer?
    private var monsterPlayer : AVAudioPlayer?
    private var bubblesPlayer : AVAudioPlayer?
    func playGuitar() {
        if let url = Bundle.main.url(forResource: "guitar", withExtension: "wav"){
            guitarPlayer = try? AVAudioPlayer(contentsOf: url)
            guitarPlayer?.play()
            
        }
        
    }
    
   func playApplause() {
        if let url = Bundle.main.url(forResource: "applause", withExtension: "wav"){
            applausePlayer = try? AVAudioPlayer(contentsOf: url)
            applausePlayer?.play()
        }
    }
     func playMonster() {
        if let url = Bundle.main.url(forResource: "monster", withExtension: "wav"){
            monsterPlayer = try? AVAudioPlayer(contentsOf: url)
            monsterPlayer?.play()
        }
    }
    func playBubbles() {
        if let url = Bundle.main.url(forResource: "bubbles", withExtension: "wav"){
            bubblesPlayer = try? AVAudioPlayer(contentsOf: url)
            bubblesPlayer?.play()
        }
    }
}
