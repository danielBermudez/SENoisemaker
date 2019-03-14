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
    init(){
        if let url = Bundle.main.url(forResource: "guitar", withExtension: "wav"){
            guitarPlayer = try? AVAudioPlayer(contentsOf: url)
        }
        
        if let url2 = Bundle.main.url(forResource: "applause", withExtension: "wav"){
            applausePlayer = try? AVAudioPlayer(contentsOf: url2)
        }
        
        if let url3 = Bundle.main.url(forResource: "monster", withExtension: "wav"){
            monsterPlayer = try? AVAudioPlayer(contentsOf: url3)
        }
        
        if let url4 = Bundle.main.url(forResource: "bubbles", withExtension: "wav"){
            bubblesPlayer = try? AVAudioPlayer(contentsOf: url4)
        }
        
            }
    func  initWithSoundFileNames(names : [String]){
        for i in names.indices {
            
        }
    }
    
    func playGuitar() {
            guitarPlayer?.play()
    }
    
   func playApplause() {
            applausePlayer?.play()
    }
     func playMonster() {
            monsterPlayer?.play()
    }
    func playBubbles() {
            bubblesPlayer?.play()
    }
}
