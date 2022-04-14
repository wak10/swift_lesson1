//
//  ContentView.swift
//  Shared
//
//  Created by Takahiro Chiba on 2022/04/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image("gu")
                //リサイズを指定
                .resizable()
                //アスペクト比を修正
                .aspectRatio(contentMode: .fit)
            Text("グー")
            Button("じゃんけんをする!") {
                print("タップされたよ!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

