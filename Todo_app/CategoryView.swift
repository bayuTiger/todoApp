//
//  CategoryView.swift
//  Todo_app
//
//  Created by 高山虎之介 on 2021/01/04.
//

import SwiftUI

struct CategoryView: View {
    var category: TodoEntity.Category
    @State var numberOfTasks = 0
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Image(systemName: category.image())
                    .font(.largeTitle)
                Text(category.toString())
                Text("・\(numberOfTasks)タスク")
            }
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "plus")
            }
            Spacer()
        }
        .frame(maxWidth:.infinity,minHeight: 150)
        .padding()
        .foregroundColor(.white)
        .background(category.color())
        .cornerRadius(20)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CategoryView(category: .ImpUrg_1st,
                         numberOfTasks: 100)
            CategoryView(category: .ImpNUrg_2nd)
            CategoryView(category: .NImpUrg_3rd)
            CategoryView(category: .NImpNUrg_4th)
        }
    }
}
