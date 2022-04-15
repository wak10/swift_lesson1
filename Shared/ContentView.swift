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
            Spacer()
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            }else if answerNumber == 1 {
                Image("gu")
                    //リサイズを指定
                    .resizable()
                    //アスペクト比を修正
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("グー")
                    .padding(.bottom)
            }else if answerNumber == 2 {
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            }else{
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            
            Button("じゃんけんをする!") {
                var newAnswerNumber = 0
                repeat{
                    newAnswerNumber = Int.random(in: 1...3)
                }while answerNumber == newAnswerNumber
                answerNumber = newAnswerNumber
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .font(.title)
            .background(Color.blue)
            .foregroundColor(Color.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

