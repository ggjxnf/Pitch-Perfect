//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Andrey on 13/01/15.
//  Copyright (c) 2015 ggjxnf. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    var receivedAudio: RecordedAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            
        } else {
            println("file not found")
        }*/
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlowAudio(sender: AnyObject) {
        // var url = NSBundle.mainBundle().URLForResource("movie_quote", withExtension: "mp3")
        // audioPlayer = AVAudioPlayer(contentsOfURL: url, error: nil)
        audioPlayer.rate = 0.5
        playAudio()
    }

    @IBAction func playFastAudio(sender: AnyObject) {
        audioPlayer.rate = 1.5
        playAudio()
    }
    
    func playAudio() {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        audioPlayer.play()
    }
    
    @IBAction func stopPlayingAudio(sender: AnyObject) {
        audioPlayer.stop()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
