import SwiftUI
import PlaygroundSupport

struct CircleImage: View {
    var body: some View {
        Text("kk")
        Image(uiImage:#imageLiteral(resourceName: "照片.png"))
            .resizable()
            .scaledToFit()
            .frame(minWidth:nil,
                   idealWidth: nil,
                   maxWidth: UIScreen.main.bounds.width,
                   minHeight: nil,
                   idealHeight: nil,
                   maxHeight: 200,
                   alignment: .center
            ).clipShape(Circle())               
    }
}

struct ContentView: View {
    var body: some View {
        VStack{
            CircleImage()
            HStack{
                Text("Hello, World!")
                    .font(.title)
                    .padding()
                Spacer()
                Text("is ")
            }
        }
        .background(Color.blue)
        
        
        
    }
    
}

PlaygroundPage.current.setLiveView(ContentView())