//
//  QuickNewTask.swift
//  Todo_app
//
//  Created by 高山虎之介 on 2021/01/05.
//

import SwiftUI

struct QuickNewTask: View {
    let category: TodoEntity.Category
    
    @State var newTask: String = ""
    
    fileprivate func addNewTask() {
        self.newTask = ""
    }
    
    fileprivate func cancelTask() {
        self.newTask = ""
    }
    
    var body: some View {
            HStack {
                TextField("新しいタスク", text: $newTask, onCommit:  {
                    self.addNewTask()
                }).textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action:{
                    addNewTask()
                }) {
                   Text("追加")
                }
                Button(action: {
                    cancelTask()
                }) {
                   Text("Cancel")
                }
                .foregroundColor(.red)

        }
    }
}

struct QuickNewTask_Previews: PreviewProvider {
    static var previews: some View {
        QuickNewTask(category: .ImpNUrg_2nd)
    }
}
