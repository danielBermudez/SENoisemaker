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
    let audioFileNames = ["guitar","applause","monster","bubbles"]
    let  players : [AVAudioPlayer?]
    
    init(){
        players = audioFileNames.map( { filename  in
            if let url = Bundle.main.url(forResource: filename, withExtension: "wav") {
               return try? AVAudioPlayer(contentsOf: url)
            } else {
                return nil
            }
        })
    }
    func playGuitar() {
            players[0]?.play()
    }
    
   func playApplause() {
            players[1]?.play()
    }
     func playMonster() {
            players[2]?.play()
    }
    func playBubbles() {
           players[3]?.play()
    }
}
