/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var guitarPlayer : AVAudioPlayer?
    var applausePlayer : AVAudioPlayer?
    var monsterPlayer : AVAudioPlayer?
    var bubblesPlayer : AVAudioPlayer?
    @IBAction func playGuitar(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "guitar", withExtension: "wav"){
            guitarPlayer = try? AVAudioPlayer(contentsOf: url)
            guitarPlayer?.volume = 0.5
            guitarPlayer?.pan = -1.0
            guitarPlayer?.numberOfLoops = 2
            guitarPlayer?.play()
            
        }
        
    }
    
    @IBAction func playApplause(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "applause", withExtension: "wav"){
            applausePlayer = try? AVAudioPlayer(contentsOf: url)
           applausePlayer?.volume = 0.7
            applausePlayer?.pan = 0
            applausePlayer?.numberOfLoops = 2
            applausePlayer?.play()
        }
    }
    @IBAction func playMonster(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "monster", withExtension: "wav"){
            monsterPlayer = try? AVAudioPlayer(contentsOf: url)
            monsterPlayer?.volume = 1
            monsterPlayer?.pan = 1.0
           monsterPlayer?.numberOfLoops = 5
            monsterPlayer?.play()
        }
    }
    @IBAction func playBubbles(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "bubbles", withExtension: "wav"){
            bubblesPlayer = try? AVAudioPlayer(contentsOf: url)
            bubblesPlayer?.volume = 1
           bubblesPlayer?.pan = 0
            bubblesPlayer?.numberOfLoops = 1
           
        
            bubblesPlayer?.play()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

