//
//  ContentView.swift
//  ToDo1
//
//  Created by MsMacM on 2024/02/04.
//

import SwiftUI

struct ContentView: View {
    @State var taskData = [
        (title: "ジョギングする", completed: false),
        (title: "お花に水をやる", completed: false),
        (title: "部屋の掃除をする", completed: false),
        (title: "本を読む", completed: false)]
    var body: some View {
        NavigationStack {
            List(0..<taskData.count, id: \.self) { index in
                Button {
                    taskData[index].completed.toggle()
                } label: {
                    HStack {
                        Image(systemName: taskData[index].completed ? "checkmark.circle.fill" : "circle")
                        Text(taskData[index].title)
                    }
                }
                .foregroundColor(.primary)
//    カーソルを行末で　command + D でコピー
            }
            .navigationTitle("ToDoリスト")
        }
    }
}

#Preview {
    ContentView()
}
