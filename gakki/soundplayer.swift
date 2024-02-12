//
//  soundplayer.swift
//  gakki
//
//  Created by 木村朋広 on 2024/02/07.
//

import UIKit
import AVFoundation

class soundplayer: NSObject {
    //シンバルの音源データを読み込み
    let cymbalData = NSDataAsset(name:"cymbalSound")!.data

    //シンバル用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!

    //ギターの音源データを読み込み
    let guitarData = NSDataAsset(name:"guitarSound")!.data

    //ギター用プレイヤーの変数
    var guitarPlayer: AVAudioPlayer!


    func cymbalPlay() {
        do {
            //シンバル用のプレイヤーに、音源データを指定
            cymbalPlayer = try AVAudioPlayer(data:  cymbalData)

            //シンバルの音源再生
            cymbalPlayer.play()
        } catch {
            print("シンバルでエラーが発生しました！")
        }
    }//cymbalPlay ここまで

    func guitarPlay() {
        do {
            //シンバル用のプレイヤーに、音源データを指定
            guitarPlayer = try AVAudioPlayer(data:  guitarData)

            //シンバルの音源再生
            guitarPlayer.play()
        } catch {
            print("ギターでエラーが発生しました！")
        }
    }//guitarPlay ここまで
}
