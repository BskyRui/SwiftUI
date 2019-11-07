### SwiftUI

> 创建项目和 Hello World

1. 打开 Xcode 11，选择 "Create a new Xcode project"
2. 选择 iOS tab 下的 Single View App 模板
3. 接下来，将项目命名为 SwiftUIDemo，并且勾选 "Use SwiftUI"
4. ContentView.swift 中 ContentView 为实际的 UI


> 提取为子View
```swift
// 按住 Command 并单击 Button，在弹出的菜单中选择 "Extract Subview"，可以将这个 Button 提取为一个新的 View
var body: some View {
    HStack {
        Button(action: {
            print("Button: 1")
        }) {
            Text("1")
                .font(.system(size: 38))
                .foregroundColor(.white)
                .frame(width: 88, height: 88)
                .background(Color("digitBackground"))
                .cornerRadius(44)
        }
        // ...
    }
}
```