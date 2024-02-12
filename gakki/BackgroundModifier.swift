//
//  BackgroundModifier.swift
//  gakki
//
//  Created by 木村朋広 on 2024/02/07.
//

import SwiftUI

extension Image {
    func backgroundModifier() -> some View {
        //画像を表示するImageのインスタンス
        self
        //リサイズする
            .resizable()
        //画面いっぱいになるようにセーフエリアが外まで表示されるように指定
            .ignoresSafeArea()
        //アスペクト比(縦横比)を維持して短辺基準におさまるようにする
            .scaledToFill()
    } //backgroundModifier ここまで
} //Image ここまで
