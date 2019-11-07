//
//  ContentView.swift
//  Calculator
//
//  Created by Rui Li on 2019/11/7.
//  Copyright © 2019 Rui Li. All rights reserved.
//

import SwiftUI


// padding()将把当前的 View 包裹在一个新的 View 里，并在四周填充系统默认尺寸的空白, .padding(.top, 16)

struct CalculatorBtn : View {
    let fontSize: CGFloat = 38
    let title: String
    let size: CGSize
    let backgroundColorName: String
    let action: () -> Void
    
    var body: some View {
        return Button(action: action) {
            Text(title)
                .font(.system(size: fontSize))  // 设置字体
                .foregroundColor(.white)        // 设定文本的颜色
                .frame(width: size.width, height: size.height)
                .background(Color(backgroundColorName))
                .cornerRadius(size.width / 2)
        }
    }
}

struct ContentView: View {
    var body: some View {
        HStack {
            CalculatorBtn(
                title: "1",
                size: CGSize(width: 88, height: 88),
                backgroundColorName: "digitBackground"
            ) {
                print("Button: 1")
            }
            
            CalculatorBtn(
                title: "2",
                size: CGSize(width: 88, height: 88),
                backgroundColorName: "digitBackground"
            ) {
               print("Button: 2")
            }
           
            CalculatorBtn(
                title: "3",
                size: CGSize(width: 88, height: 88),
                backgroundColorName: "digitBackground"
            ) {
                print("Button: 3")
            }
            
            CalculatorBtn(
                title: "+",
                size: CGSize(width: 88, height: 88),
                backgroundColorName: "operatorBackground"
            ) {
                print("Button: +")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
