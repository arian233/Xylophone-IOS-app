/* Arian Ansari
 This is a simple Xylophone IOS application */


import UIKit
import AVFoundation
var player : AVAudioPlayer!
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(char: sender.currentTitle!)
    }
    
    func playSound(char : String){
        if let path = Bundle.main.path(forResource: char, ofType: "wav"){
            do{
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                player.play()
            }catch{
                print(error.localizedDescription)
            }
            
        }
        
    }
}

