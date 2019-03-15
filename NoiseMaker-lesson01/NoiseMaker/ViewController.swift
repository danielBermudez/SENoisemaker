/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    let noiseMaker = Noisemaker()
    @IBAction func playGuitar(_ sender: UIButton) {
        noiseMaker.play(index: 0)
        
    }
    
    @IBAction func playApplause(_ sender: UIButton) {
        noiseMaker.play(index: 1)
    }
    @IBAction func playMonster(_ sender: UIButton) {
        noiseMaker.play(index: 2)
    }
    @IBAction func playBubbles(_ sender: UIButton) {
         noiseMaker.play(index: 3)
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

