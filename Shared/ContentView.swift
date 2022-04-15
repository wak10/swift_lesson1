//
//  ContentView.swift
//  Shared
//
//  Created by Takahiro Chiba on 2022/04/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    var body: some View {
        VStack {
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
            }else if answerNumber == 1 {
                Image("gu")
                    //リサイズを指定
                    .resizable()
                    //アスペクト比を修正
                    .aspectRatio(contentMode: .fit)
                Text("グー")
            }else if answerNumber == 2 {
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("チョキ")
            }else{
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("パー")
            }
            
            Button("じゃんけんをする!") {
                answerNumber = Int.random(in:1...3)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

