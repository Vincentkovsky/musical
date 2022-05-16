

import Foundation
import SwiftUI
import Firebase
import AVFoundation
struct PlayerView : View {
    @State var album : Album
    @State var song : Song
    @State var player = AVPlayer()
    
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
        }.onAppear(){
            self.plays()
        }
    }
    
    
    func playPause(){
        self.isPlaying.toggle()
        if isPlaying == false {
            player.pause()
        }else{
            player.play()
        }
    }

func next(){
    if let currentIndex = album.songs.firstIndex(of: song){
        if currentIndex == album.songs.count - 1{
            player.pause()
            song = album.songs[0]
            self.plays()
        }else{
            player.pause()
            song = album.songs[currentIndex + 1]
            self.plays()

        }
    }
}

func previous(){
    if let currentIndex = album.songs.firstIndex(of: song){
        if currentIndex == 0{
            player.pause()
            song = album.songs[album.songs.count - 1 ]
            self.plays()
        }else{
            player.pause()
            song = album.songs[currentIndex - 1]
            self.plays()
        }
    }
}
    
    func plays(){
        let storage = Storage.storage().reference(forURL: self.song.file)
        storage.downloadURL{(url, error) in
            if error != nil{
                print(error)
            }else{
                do{
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                }
                catch{
                    
                }
                print(url?.absoluteString)
                player = AVPlayer(playerItem: AVPlayerItem(url: url!))
                player.play()
            }
        }
    }
}
