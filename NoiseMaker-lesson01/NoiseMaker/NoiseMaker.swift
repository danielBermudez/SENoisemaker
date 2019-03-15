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
    
    private var audioPlayers = [String: AVAudioPlayer?]()
    private let soundNames = ["guitar","applause","monster","bubbles"]
    init(){
        initWithSoundFileNames(names: soundNames)
        }
    
    func  initWithSoundFileNames(names : [String]){
        for i in names.indices {
            if let url = Bundle.main.url(forResource: names[i], withExtension: "wav"){
                audioPlayers[names[i]] = try? AVAudioPlayer(contentsOf: url )
            }
        }
    }
    
    func playGuitar() {
         audioPlayers["guitar"]!?.play()

    }
    
   func playApplause() {
            audioPlayers["applause"]!?.play()
    }
    
     func playMonster() {
          audioPlayers["monster"]!?.play()
    }
    
    func playBubbles() {
           audioPlayers["bubbles"]!?.play()
    }
}
