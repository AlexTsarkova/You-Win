//
//  ContentView.swift
//  You Win
//
//  Created by Александра on 17.05.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var winVM: WinVM
    
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: 10) {
                    returnFriendView(winVM: winVM)
                    Spacer()
                    HStack(spacing: 20) {
                        //Начать игру
                        
                    NavigationLink(destination: WinView(winVM: winVM)
                    ) {
                        Image("start")
                            .resizable()
                            .frame(width: 200, height: 60, alignment: .center)
                    }
                        //Добавить игрока
                        PlusButtonView(winVM: winVM)
                    }
                }.padding()
            }.background(Image("background")
                            .resizable()
                            .scaledToFill())
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }

    func returnFriendView(winVM: WinVM) -> some View {
        ForEach(winVM.allFriends) { friend in
            AddFriendView(newFriend: Binding(get: {
                friend.name
            }, set: { newName in
                friend.name = newName
            }))
            }
    }
}




