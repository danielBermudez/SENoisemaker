/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    let noiseMaker = Noisemaker()
    @IBAction func playGuitar(_ sender: UIButton) {
       noiseMaker.playGuitar()
        
    }
    
    @IBAction func playApplause(_ sender: UIButton) {
        noiseMaker.playApplause()
    }
    @IBAction func playMonster(_ sender: UIButton) {
       noiseMaker.playMonster()
    }
    @IBAction func playBubbles(_ sender: UIButton) {
        noiseMaker.playBubbles()
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

