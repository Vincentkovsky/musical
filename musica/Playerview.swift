

import Foundation
import SwiftUI

struct PlayerView : View {
    var album : Album
    var song : Song
    
    @State var isPlaying : Bool = false
    
    var body : some View {
        ZStack{
            Image(album.image).resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Blur(style: .light).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack
            {Spacer()
                AlbumArt(album: album, isWithText: false)
                
                Text(song.name).font(.title).fontWeight(.light).foregroundColor(.white)
                Spacer()
            
                        
                ZStack{
                    HStack{
                    Button(action: self.previous, label: {
                            Image(systemName: "arrow.left.circle").resizable()})
                        .frame(width: 50, height: 50, alignment: .center)
                        .foregroundColor(.white.opacity(0.3))
                        
                        
                        Button(action: self.playPause, label: {
                                Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill").resizable()})
                            .frame(width: 70, height: 70, alignment: .center).padding()
                        
                        
                        
                        
                        Button(action: self.next, label: {
                                Image(systemName: "arrow.right.circle").resizable()})
                            .frame(width: 50, height: 50, alignment: .center)
                            .foregroundColor(Color.white.opacity(0.3)
                    )
                        
                    }
                    .edgesIgnoringSafeArea(.bottom).frame( height: 200, alignment: .center)
}
}
}
    }
    func playPause(){
        self.isPlaying.toggle()}

func next(){}

func previous(){}



}
