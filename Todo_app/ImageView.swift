//
//  ImageView.swift
//  Todo_app
//
//  Created by 高山虎之介 on 2021/01/03.
//


import SwiftUI

struct CategoryImage: View {
    var body: some View {
        Image(systemName: "tortoise.fill")
            .resizable()
            .scaledToFit()
            .foregroundColor(.white)
            .padding(2.0)
            .frame(width: 30, height: 30)
            .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
            .cornerRadius(6.0)
    }
}

struct CategoryImage_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImage()
    }
}
