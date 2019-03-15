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
    func play(index: Int) {
        if !players.isEmpty && index >= 0 && index < players.count{
             players[index]?.play()
        }
    }
    
}
