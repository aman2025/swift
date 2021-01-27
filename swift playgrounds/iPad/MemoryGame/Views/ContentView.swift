//start
import SwiftUI
import PlaygroundSupport

struct ContentView: View {
	var emojis = ["😜", "👻", "👷🏻", "🎅🏻", "😿"]
	var body: some View {
		HStack{
			ForEach(emojis.indices, id: \.self){ i in
				CardView(isFaceUp: true, emo: self.emojis[i])
			}
		}
		.padding()
		.foregroundColor(Color.orange)
		.font(Font.largeTitle)
		
	}
}

struct CardView: View {
	var isFaceUp: Bool
	var emo: String
	var body: some View {
		ZStack{
			if isFaceUp {
				RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
				RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
				Text("\(emo)")
					.font(.system(size: 18))

			}else{
				RoundedRectangle(cornerRadius: 10.0).fill()
			}
		}
		
	}
}
PlaygroundPage.current.setLiveView(ContentView())
//end