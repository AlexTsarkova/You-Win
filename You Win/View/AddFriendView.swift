//
//  AddFriendView.swift
//  You Win
//
//  Created by Александра on 17.05.2021.
//

import SwiftUI


struct AddFriendView: View {
    @Binding var newFriend: String 
    
    var body: some View {
        ZStack {
        Image("borderline")
            .resizable()
            .frame(idealWidth: 300, maxWidth: 380, idealHeight: 70, maxHeight: 70, alignment: .center)
            
            
        TextField("Введите имя", text: $newFriend)
            .frame(maxWidth: 200, alignment: .center)
        }
    }
}


