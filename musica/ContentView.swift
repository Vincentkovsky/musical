

import SwiftUI

struct Album : Hashable {
    var id = UUID()
    var name : String
    var image : String
    var songs : [Song]
    
}

struct Song : Hashable {
    var id = UUID ()
    var name : String
    var time : String
}

struct ContentView: View {
    
    var albums = [Album(name : "Shallow", image: "crying",
                        songs: [Song(name: "Shallow", time: "2:36"),
                                Song(name: "Always Remember Us This Way", time: "2:36"),
                                Song(name: "I'll Never Love Again", time: "2:36"),
                                Song(name: "Heal Me", time: "2:36")]),
                  
                  Album(name : "Always Remember Us This Way", image: "dog",
                                      songs: [Song(name: "Shallow", time: "2:36"),
                                              Song(name: "Always Remember Us This Way", time: "2:36"),
                                              Song(name: "I'll Never Love Again", time: "2:36"),
                                              Song(name: "Heal Me", time: "2:36")                        ]),
                  
                  Album(name : "I'll Never Love Again", image: "guitar",
                                      songs: [Song(name: "Shallow", time: "2:36"),
                                      Song(name: "Always Remember Us This Way", time: "2:36"),
                                      Song(name: "I'll Never Love Again", time: "2:36"),
                                      Song(name: "Heal Me", time: "2:36")                ]),
                  
                  Album(name : "Heal Me", image: "kiss",
                                      songs: [Song(name: "Shallow", time: "2:36"),
                                              Song(name: "Always Remember Us This Way", time: "2:36"),
                                              Song(name: "I'll Never Love Again", time: "2:36"),
                                              Song(name: "Heal Me", time: "2:36")                        ]),
                  Album(name : "Before I Cry", image: "shallow",
                                      songs: [Song(name: "Shallow", time: "2:36"),
                                              Song(name: "Always Remember Us This Way", time: "2:36"),
                                              Song(name: "I'll Never Love Again", time: "2:36"),
                                              Song(name: "Heal Me", time: "2:36")])]
    
    @State private var currentAlbum : Album?
    
    
    
    
    
    var body: some View {
        NavigationView  {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false, content : {
                    LazyHStack{
                    ForEach(self.albums, id: \.self, content: {
                        album in
                        AlbumArt(album: album, isWithText: true)
                            .onTapGesture {
                                self.currentAlbum = album
                            }
                    })
                    }
                })
                LazyVStack{
                    ForEach((self.currentAlbum?.songs ?? self.albums.first?.songs) ??
                        [Song(name: "Shallow", time: "2:36"),
                                Song(name: "Always Remember Us This Way", time: "2:36"),
                                Song(name: "I'll Never Love Again", time: "2:36"),
                                Song(name: "Heal Me", time: "2:36")],
                            
                            id: \.self,
                            content:{
                            song in
                                SongCell(album: currentAlbum ?? albums.first!, song : song)
                               
                                
                            })
            
        }
            
            }.navigationTitle("My Playlist")
    }
}
}
struct AlbumArt : View {
    var album : Album
    var isWithText : Bool
    var body: some View {
     ZStack(alignment: .bottom, content: {
            Image(album.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 200, height:200, alignment: .trailing)
        
        if isWithText == true{
            ZStack{
                Blur(style: .light)
                Text(album.name).foregroundColor(.white)
            }.frame(height: 60, alignment: .center)
        }
            
        }) .frame(width: 200, height:200, alignment: .trailing).clipped().cornerRadius(20).shadow(radius: 10).padding(20)
           
    }
}

struct  SongCell : View {
    var album : Album
    var song : Song
    var body: some View {
        NavigationLink(destination: PlayerView(album: album, song: song), label: {
        HStack{
            ZStack{
                Circle().frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.green)
                Circle().frame(width: 20, height: 20, alignment: .center)
                    .foregroundColor(.white)
            }
            Text(song.name).bold()
            Spacer()
            Text(song.time)}
            .padding(20)
        }).buttonStyle(PlainButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
