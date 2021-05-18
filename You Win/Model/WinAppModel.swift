//
//  WinAppModel.swift
//  You Win
//
//  Created by Александра on 17.05.2021.
//

import Foundation

struct WinAppModel {
   var allFriends = [Friend(name: "")]
    
    
    mutating func addFriend(name: String) {
        allFriends.append(Friend(name: name))
    }
    
    func chooseWinner() -> String {
        if allFriends.count > 1 {
            if allFriends[0].name != "" {
            return allFriends.randomElement()?.name ?? "?"
            } else {
                return "Введите имя"
            }
        } else {
            return "Введите больше друзей"
        }
    }
}

class Friend: Identifiable, ObservableObject {
    var id: UUID = UUID()
    @Published var name: String = ""
    
    init(name: String) {
        self.name = name
    }
    
    init() { }
}
