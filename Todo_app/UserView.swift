//
//  UserView.swift
//  Todo_app
//
//  Created by 高山虎之介 on 2021/01/03.
//

import SwiftUI

struct UserView: View {
    
    let image: Image
    let userName: String
    var body: some View {
        HStack {
            VStack(alignment:.leading){
                Text("こんにちは")
                    .foregroundColor(Color.tTitle)
                    .font(.footnote)
                Text("\(userName)")
                    .foregroundColor(Color.tTitle)
                    .font(.title)
            }
            Spacer()
            image
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
        }
        .padding()
        .background(Color.tBackground)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            UserView(
                image: Image("original"),
                userName: "User Name")
        Circle()
            
        }
    }
}
