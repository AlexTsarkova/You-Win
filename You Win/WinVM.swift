//
//  WinVM.swift
//  You Win
//
//  Created by Александра on 17.05.2021.
//

import Foundation

class WinVM: ObservableObject {
    @Published private var win: WinAppModel = WinVM.newGame()
    
    
    //MARK: - Access to the Model

    var allFriends: [Friend] {
        win.allFriends
    }
    
    //MARK: - Intents
    
    func chooseWinner() -> String {
        win.chooseWinner()
    }
    
    
    func addFriend(name: String) {
        win.addFriend(name: name)
    }
    
   private static func newGame() -> WinAppModel {
       return WinAppModel()
    }
    
    func createNewGame() {
        win = WinVM.newGame()
    }
}
