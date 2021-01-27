import SwiftUI
import PlaygroundSupport

// 全屏圆角，字体大小
struct ContentView: View {
	var body: some View {
		RoundedRectangle(cornerRadius: 10.0)
			.fill(.gray)
			.stroke(Color.orange, lineWidth: 3)
			.foregroundColor(.orange)
			
		Text("👋🏻")
			.font(.largeTitle)
	}
}

//全屏背景



PlaygroundPage.current.setLiveView(ContentView())