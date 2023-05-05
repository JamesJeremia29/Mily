//
//  ProfilePicker.swift
//  mily
//
//  Created by James Jeremia on 05/05/23.
//

import SwiftUI

struct ProfilePicker: View {
    @Binding var image: Image?
    var body: some View {
        if image != nil {
            image!
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.white)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                .scaledToFit()
                .frame(width: 200)
        }
        else{
            Image("tree")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.white)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                .scaledToFit()
                .frame(width: 200)
        }
    }
}

//struct ProfilePicker_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfilePicker()
//    }
//}
