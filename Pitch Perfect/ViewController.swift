//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Andrey on 06/01/15.
//  Copyright (c) 2015 ggjxnf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        // println("in recordAudio")
        recordingInProgress.hidden = false
    }

}

