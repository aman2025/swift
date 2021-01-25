import SwiftUI
import PlaygroundSupport

struct ContentView: View {
	var body: some View {
		HStack {
			ForEach(0..< 4){ index in 
				CardView(isFaceUp: false)
			}
		}
		.padding()
		.foregroundColor(Color.orange)
		.font(Font.largeTitle)
	}
}

struct CardView: View {
	var isFaceUp: Bool = true
	var body: some View{
		ZStack {
			if isFaceUp {
				RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
				RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
				Text("emoji") // 直接复制备忘录或在聊天记录中的emoji
				/*
				 * static let palette: String = "⭐️⛈🍎🌏🥨⚾️"
				*/
				
			}else{
				RoundedRectangle(cornerRadius: 10.0).fill()
			}
		}
	}
}

PlaygroundPage.current.setLiveView(ContentView())