import SwiftUI
import PlaygroundSupport

struct ContentView: View {
	@state var model = Themes.listModel
	var body: some View {
		List(model.items, action: model.selectItem){ item in
			VStack(alignment: .leading){
				Text(item.title)
				Text(item.subTitle)
					.color(.gray)
			}
		}
	}
}


//以下是另外一个页面的model
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}



PlaygroundPage.current.setLiveView(ContentView())