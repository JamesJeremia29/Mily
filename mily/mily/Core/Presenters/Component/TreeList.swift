//
//  TreeList.swift
//  mily
//
//  Created by James Jeremia on 05/05/23.
//

import SwiftUI

struct TreeList: View {
    var name : String
    var body: some View {
        Button(action: {
            //open canvas
        }) {
            HStack(){
                Image("tree")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    .scaledToFit()
                    .frame(width: 50)
                Text(name)
                    .foregroundColor(.black)
                Spacer()
            }.padding(20)
                .onLongPressGesture {
                    //delete tree
                }
        }
    }
}

struct TreeList_Previews: PreviewProvider {
    static var previews: some View {
        TreeList(name: "")
    }
}
