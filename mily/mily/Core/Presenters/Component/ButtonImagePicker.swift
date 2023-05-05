//
//  ButtonImagePicker.swift
//  mily
//
//  Created by James Jeremia on 05/05/23.
//

import SwiftUI
import UIKit

struct ButtonImagePicker: View {
    @State private var image: Image?
    @State private var showImagePicker = false

    var body: some View {
        VStack {
            
            if let image = image {
                image
                    .resizable()
                    .scaledToFit()
            } else {
                Button(action: {
                    showImagePicker = true
                }) {
                    Image(systemName: "plus")
                        .font(.system(size: 60))
                   
                    
                    .colorMultiply(Color.gray)
        
                }
                
            }
        }
        
        .sheet(isPresented: $showImagePicker) {
            ImagePickerView(selectedImage: $image)
        }
        .alignmentGuide(.top) { d in
            d[.top] + 100 }
    }
}


struct ButtonImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ButtonImagePicker()
    }
}

