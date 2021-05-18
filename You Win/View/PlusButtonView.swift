//
//  BaseFriendView.swift
//  You Win
//
//  Created by Александра on 18.05.2021.
//

import SwiftUI

struct PlusButtonView: View {
    var winVM: WinVM
    
    var body: some View {
        Button(action: {
            withAnimation(.linear) {
                winVM.addFriend(name: "")
            }
        },
        label: {
                Image("plus")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                    .padding(.horizontal, 6)
            
        })
    }
}

