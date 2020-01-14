//
//  ViewController.swift
//  TEST_MUSIC1
//
//  Created by goemon12 on 2020/01/13.
//  Copyright © 2020 goemon12. All rights reserved.
//
/*
 AVAudioEngine, AVAudioPlayerNode をインスタンス変数として宣言する。

 // エンジンの生成
 let audioEngine = AVAudioEngine()
 // ソースノードの生成
 let player = AVAudioPlayerNode()
 playSineWave関数でオーディオエンジン・バッファーを設定し、サイン波を再生する。

 func playSineWave() {
   // プレイヤーノードからオーディオフォーマットを取得
   let audioFormat = player.outputFormatForBus(0)
   // サンプリング周波数: 44.1K Hz
   let sampleRate = Float(audioFormat.sampleRate)
   // 3秒間鳴らすフレームの長さ
   let length = 3.0 * sampleRate
   // PCMバッファーを生成
   let buffer = AVAudioPCMBuffer(PCMFormat: audioFormat, frameCapacity:UInt32(length))
   // frameLength を設定することで mDataByteSize が更新される
   buffer.frameLength = UInt32(length)
   // オーディオのチャンネル数
   let channels = Int(audioFormat.channelCount)
   for ch in (0..<channels) {
     let samples = buffer.floatChannelData[ch]
     for n in 0..<Int(buffer.frameLength) {
       samples[n] = sinf(Float(2.0 * M_PI) * 440.0 * Float(n) / sampleRate)
     }
   }
       
   // オーディオエンジンにプレイヤーをアタッチ
   audioEngine.attachNode(player)
   let mixer = audioEngine.mainMixerNode
   // プレイヤーノードとミキサーノードを接続
   audioEngine.connect(player, to: mixer, format: audioFormat)
   // 再生の開始を設定
   player.scheduleBuffer(buffer) {
       print("Play completed")
   }
     
   do {
     // エンジンを開始
     try audioEngine.start()
     // 再生
     player.play()
   } catch let error {
     print(error)
   }
 }

 */
import UIKit
import AVFoundation

class ViewController: UIViewController {
    let engine = AVAudioEngine()
    let player = AVAudioPlayerNode()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    func aaaa() {
    }
}

