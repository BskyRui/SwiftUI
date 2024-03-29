//
//  ContentView.swift
//  Calculator
//
//  Created by Rui Li on 2019/11/7.
//  Copyright © 2019 Rui Li. All rights reserved.
//

import SwiftUI


// padding()将把当前的 View 包裹在一个新的 View 里，并在四周填充系统默认尺寸的空白, .padding(.top, 16)

struct ContentView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 12) {
            Text("0")
             .font(.system(size: 76))
            CalculatorButtonPad()
        }
    }
}


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // 显示结算结果
        VStack(alignment: .trailing, spacing: 12) {
            Text("0")
             .font(.system(size: 76))
            CalculatorButtonPad()
        }
    }
}
#endif


// 定义按钮样式
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


struct CalculatorButtonRow: View {
    let row: [CalculatorButtonItem]
    var body: some View {
       HStack {
            ForEach(row, id: \.self) { item in
                CalculatorBtn(
                    title: item.title,
                    size: item.size,
                    backgroundColorName: item.backgroundColorName)
                {
                        print("Button: \(item.title)")
                }
            }
       }
    }
}


struct CalculatorButtonPad: View {
    let pad: [[CalculatorButtonItem]] = [
        [.command(.clear), .command(.flip),
         .command(.percent), .op(.divide)],
        [.digit(7), .digit(8), .digit(9), .op(.multiply)],
        [.digit(4), .digit(5), .digit(6), .op(.minus)],
        [.digit(1), .digit(2), .digit(3), .op(.plus)],
        [.digit(0), .dot, .op(.equal)]
    ]

    var body: some View {
        VStack(spacing: 8) {
            ForEach(pad, id: \.self) { row in
                CalculatorButtonRow(row: row)
            }
        }
    }
}
