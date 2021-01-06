//
//  TodoList.swift
//  Todo_app
//
//  Created by 高山虎之介 on 2021/01/06.
//

import SwiftUI

struct TodoList: View {
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \TodoEntity.time,
                                           ascending: true)],
        animation: .default)
    var todoList: FetchedResults<TodoEntity>
    
    let category: TodoEntity.Category
    
    var body: some View {
        List {
            ForEach(todoList) { todo in
                Text (todo.task ?? "no title")
            }
        }
    }
}

struct TodoList_Previews: PreviewProvider {

    static let context = (UIApplication.shared.delegate as! AppDelegate )
        

    static var previews: some View {
        TodoList(category: .ImpUrg_1st)
            .environment(\.managedObjectContext, context)
    }
}
