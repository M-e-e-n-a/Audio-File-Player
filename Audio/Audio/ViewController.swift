//
//  ViewController.swift
//  Audio
//
//  Created by ISEAPLAB20 on 13/10/22.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var player = AVAudioPlayer()

    @IBAction func playAudio(_ sender: UIButton) {
        player.play()
    }
    
    
    @IBAction func pauseAudio(_ sender: UIButton) {
        player.pause()
    }
    
    
    @IBAction func replayAudio(_ sender: UIButton) {
        player.currentTime=0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do{
            let audioPath = Bundle.main.path(forResource: "song", ofType:"mp3")
        
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)}
        catch{
            
        }
    }
    
}

