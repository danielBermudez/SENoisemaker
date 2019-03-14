/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var player : AVAudioPlayer?
    
    @IBOutlet weak var bubble: UIButton!
    @IBOutlet weak var monster: UIButton!
    @IBOutlet weak var applause: UIButton!
    @IBOutlet weak var guitar: UIButton!
    
    @IBAction func playSound(_ sender: UIButton) {
        
        let soundAction: (String) -> Void = { [weak self] sound in
            if let url = Bundle.main.url(forResource: sound, withExtension: "wav"){
                self?.player = try? AVAudioPlayer(contentsOf: url)
                self?.player?.play()
            }
        }

        guard let soundName = sender.titleLabel?.text?.lowercased() else { return }
        
        soundAction(soundName)
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

