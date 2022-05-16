//
//  Data.swift
//  musica
//
//  Created by Vincent Jin on 2022/5/15.
//

import Foundation
import SwiftUI
import Firebase

class OurData : ObservableObject{
   @Published public var albums = [Album]()
    

    func loadAlbums(){
        Firestore.firestore().collection("albums").getDocuments{(snapshot,error) in
            if error == nil{
                for document in snapshot!.documents{
                let name = document.data()["name"] as? String ?? "error"
                let image = document.data()["image"] as? String ?? "error"
                    
                    print(name)
                    let songs = document.data()["Songs"] as? [String : [String : Any]]
                    
                    var songsArray = [Song]()
                    if let songs = songs{
                    for song in songs{
                        let songName = song.value["name"] as? String ?? "error"
                        let songTime = song.value["time"] as? String ?? "error"
                        let sFile = song.value["file"] as? String ?? "error"
                        songsArray.append(Song(name: songName, time: songTime, file: sFile))
                    }
                    }
                    
                    self.albums.append(Album(name: name, image: image, songs: songsArray))
                }
                print(snapshot)
            }else{
                print(error)
            }
        }
    }
}

//
//var albums = [Album(name : "Shallow", image: "crying",
//                    songs: [Song(name: "Shallow", time: "2:36"),
//                            Song(name: "Always Remember Us This Way", time: "2:36"),
//                            Song(name: "I'll Never Love Again", time: "2:36"),
//                            Song(name: "Heal Me", time: "2:36")]),
//
//              Album(name : "Always Remember Us This Way", image: "dog",
//                                  songs: [Song(name: "Shallow", time: "2:36"),
//                                          Song(name: "Always Remember Us This Way", time: "2:36"),
//                                          Song(name: "I'll Never Love Again", time: "2:36"),
//                                          Song(name: "Heal Me", time: "2:36")                        ]),
//
//              Album(name : "I'll Never Love Again", image: "guitar",
//                                  songs: [Song(name: "Shallow", time: "2:36"),
//                                  Song(name: "Always Remember Us This Way", time: "2:36"),
//                                  Song(name: "I'll Never Love Again", time: "2:36"),
//                                  Song(name: "Heal Me", time: "2:36")                ]),
//
//              Album(name : "Heal Me", image: "kiss",
//                                  songs: [Song(name: "Shallow", time: "2:36"),
//                                          Song(name: "Always Remember Us This Way", time: "2:36"),
//                                          Song(name: "I'll Never Love Again", time: "2:36"),
//                                          Song(name: "Heal Me", time: "2:36")                        ]),
//              Album(name : "Before I Cry", image: "shallow",
//                                  songs: [Song(name: "Shallow", time: "2:36"),
//                                          Song(name: "Always Remember Us This Way", time: "2:36"),
//                                          Song(name: "I'll Never Love Again", time: "2:36"),
//                                          Song(name: "Heal Me", time: "2:36")])]
