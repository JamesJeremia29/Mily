//
//  PopUpCreate.swift
//  mily
//
//  Created by James Jeremia on 05/05/23.
//

import SwiftUI

struct PopUpCreate: View {

    let myColor = UIColor(red: 203/255, green: 243/255, blue: 240/255, alpha: 1.0)
    @State private var roomName: String = ""
    var body: some View {
        ZStack{
            Rectangle().frame(width: 320, height: 150)
                .cornerRadius(10)
                .foregroundColor(.white)
                .shadow(radius: 10)
            VStack{
                Text("Enter Mily Room Name").font(.system(size: 20, weight: .bold))
                Spacer().frame(height: 30)
                HStack{
                    //                    Spacer().frame(width: 50)
                    TextField("Enter Tree Name Here...", text: $roomName).textFieldStyle(NameTextFieldStyle()).padding(.horizontal)
                    Button {
                        //CANVAS PAGE
                    } label: {
                        Text("Done")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.black)
                            .frame(width: 50, height: 40)
                            .background(Color(myColor))
                            .cornerRadius(10)
                    }

                }
            }
        }.background(Color.white)
            .cornerRadius(10)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black.opacity(0.5).ignoresSafeArea())
    }
}

struct NameTextFieldStyle: TextFieldStyle {
    let myColor = UIColor(red: 203/255, green: 243/255, blue: 240/255, alpha: 1.0)
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color(myColor), Color(myColor)]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(10)
//            .shadow(color: .gray, radius: 10)
            .frame(width: 210)
    }
}

struct PopUpCreate_Previews: PreviewProvider {
    static var previews: some View {
        PopUpCreate()
    }
}
