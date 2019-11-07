//
//  ContentView.swift
//  Calculator
//
//  Created by Rui Li on 2019/11/7.
//  Copyright © 2019 Rui Li. All rights reserved.
//

import SwiftUI


// 将把当前的 View 包裹在一个新的 View 里，并在四周填充系统默认尺寸的空白, .padding(.top, 16)

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Button: +")
        }) {
            Text("+")
            .font(.system(size: 38))   // 设置字体
            .foregroundColor(.white)   // 设定文本的颜色
            .frame(width: 88, height: 88)
            .background(Color("operatorBackground"))
            .cornerRadius(44)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
