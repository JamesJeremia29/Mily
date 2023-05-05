//
//  InvitationView.swift
//  mily
//
//  Created by James Jeremia on 05/05/23.
//

import SwiftUI

struct InvitationView: View {
    var body: some View {
        VStack(spacing:30){
            Image("tree")
                .resizable()
                .scaledToFit()
                .scaleEffect(0.7)
                .position(x: 200,y: 250)
            
            VStack(alignment: .center){
                
                Text("James Jeremia ")
                    .fontWeight(.bold)
            
                
                + Text (" has invited you  to “Keluarga Cemara”. Would you like to accept and proceed?")
                   
            }
            .frame(maxWidth: .infinity, alignment: .center)

            .padding(10)
            HStack(spacing: 30) {
                Button(action: {
                    // do something when the first button is pressed
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)

                            .frame(width: 100, height: 50)
                        
                        Text("Accept")
                            .foregroundColor(.white)
                    }
                }
                Button(action: {
                    // do something when the second button is pressed
                }
                ) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                        
                            .stroke(Color.black, lineWidth: 0.5)
                            .frame(width: 100, height: 50)
                        
                        Text("Decline")
                            .foregroundColor(.gray)
                    }
                    
                }
            }
        }
        .padding(.bottom, 180)    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView()
    }
}
