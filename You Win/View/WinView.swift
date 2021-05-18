//
//  WinView.swift
//  You Win
//
//  Created by Александра on 18.05.2021.
//

import SwiftUI

struct WinView: View {
    @ObservedObject var winVM: WinVM
    @Environment(\.presentationMode) var presentationMode
    @State private var winner = ""
    
    var body: some View {
        Group {
            VStack{
                Spacer()
                Text(String())
                Spacer()
                Text(winner)
                    .font(.largeTitle)
                    .italic()
                Spacer()
                
                HStack(spacing: 30) {
                //Создать новую игру
                Button {
                    winVM.createNewGame()
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image("newgame")
                        .resizable()
                        .frame(width: 200, height: 60, alignment: .center)
                }
                //Реролл игрока
                    Button {
                        winner = winVM.chooseWinner()
                    } label: {
                        Image("reset")
                            .resizable()
                            .frame(width: 60, height: 60, alignment: .center)
                    }
                }.padding()
            }.onAppear() {
                winner = winVM.chooseWinner()
            }
        }.background(
            Image("win")
                .resizable()
                .scaledToFill()
        )
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

