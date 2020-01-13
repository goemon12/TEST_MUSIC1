//
//  ViewController.swift
//  TEST_MUSIC1
//
//  Created by goemon12 on 2020/01/13.
//  Copyright © 2020 goemon12. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var engine: AVAudioEngine?
    var player: AVAudioPlayerNode?

    override func viewDidLoad() {
        super.viewDidLoad()

        engine = AVAudioEngine()
        player = AVAudioPlayerNode()
    }


}

