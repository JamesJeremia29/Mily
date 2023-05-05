//
//  AlbumView.swift
//  mily
//
//  Created by James Jeremia on 05/05/23.
//

import SwiftUI

struct AlbumView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                HStack(alignment: .top){
                    ButtonImagePicker()
                }
            }
        }
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumView()
    }
}
