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
				Text("👋🏻") // 
				/*
				 * 苹果emoji
				 * https://emojipedia.org/apple/
				 * 复制 https://emojipedia.org/grinning-face-with-big-eyes/
				 */
				Text("😀") // 
				Text("👻😜😍🤗🤫🤠🥶🥳🥺👿😿👷🏻👸🏼🎅🏻🤶🏼🐶🐒🐅🐯🐴🐷🐮🐹🐻🐻‍🐞🌸🦸🏻‍♂️⛹🏻⛹🏼‍♀️🚴🏼‍♂️🙉💀🤓👋🏻❤️🙈😼💣💩🤡🙀🙊🤟👊👊🏻👍👍🏻👏🏻👏🧑🏻👧🏻👨🏻‍🦰🧔🏼👴🏻👵🏻👱🏻‍♂️🙅🏻💁🏻‍♂️👨🏼‍🍳👩🏼‍🍳") // 

				/*
				 * static let palette: String = "⭐️⛈🍎🌏🥨⚾️"
				*/
				// 1.字体大小，自定义大小，自适应外框, 
				Text("😀").font(Font.largeTitle);  
				Text("hello")
					.font(.largeTitle);  // 可以省略 Font, 
					.foregroundColor(.orange)
				
			}else{
				RoundedRectangle(cornerRadius: 10.0).fill()
			}
		}
	}
}

PlaygroundPage.current.setLiveView(ContentView())