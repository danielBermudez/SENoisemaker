/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    var noiseMaker : Noisemaker? = nil
    
     func loadData(){
        if let path = Bundle.main.path(forResource: "AudioFileNames", ofType: "plist"){
            let dictRoot = NSDictionary(contentsOfFile: path)
            if let dict = dictRoot{
                let names = dict["names"] as! [String]
               noiseMaker = Noisemaker(audioFileNames: names)
            }
            
        }
        
    }
    
    @IBAction func playGuitar(_ sender: UIButton) {
       noiseMaker!.playGuitar()
        
    }
    
    @IBAction func playApplause(_ sender: UIButton) {
        noiseMaker!.playApplause()
    }
    @IBAction func playMonster(_ sender: UIButton) {
       noiseMaker!.playMonster()
    }
    @IBAction func playBubbles(_ sender: UIButton) {
        noiseMaker!.playBubbles()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }

}

