//
//  ContentView.swift
//  gakki
//
//  Created by 木村朋広 on 2024/02/04.
//

import SwiftUI

struct ContentView: View {
    //音をならすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = soundplayer()
    var body: some View {
        ZStack{
            //背景画像を指定する
            Image(.background)
            //背景を表示するためにレイアウトを整える
                .backgroundModifier()
            
            
            //水平にレイアウト(横方向にレイアウト)
            HStack {
                //シンバルボタン
                Button {
                    //ボタンをタップしたときのアクション
                    //シンバルの音を鳴らす
                    soundPlayer.cymbalPlay()
                } label: {
                    //画像を表示する
                    Image("cymbal")
                }//シンバルボタンはここまで
                Button {
                    //ボタンをタップしたときのアクション
                    //シンバルの音を鳴らす
                    soundPlayer.guitarPlay()
                } label: {
                    //画像を表示する
                    Image("guitar")
                } //ギターボタンはここまで
            } //HStack ここまで
        } //ZStack ここまで

    } //body ここまで
} //contentView ここまで


#Preview {
    ContentView()
}
