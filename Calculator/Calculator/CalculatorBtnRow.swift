//
//  CalculatorBtnRow.swift
//  Calculator
//
//  Created by Rui Li on 2019/11/11.
//  Copyright © 2019 Rui Li. All rights reserved.
//

import SwiftUI

struct CalculatorBtnRow : View {
    let row = [CalculatorButtonItem]
    
    var body: some View {
        HStack {
            HStack {
                ForEach(row, id: \.self) { item in
                    CalculatorButton(
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
}
