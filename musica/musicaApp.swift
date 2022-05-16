// app icon from https://www.stickpng.com/img/download/5a5a753614d8c4188e0b08c1


import SwiftUI
import Firebase
@main
struct musicaApp: App {
    let data = OurData()
    init(){
        FirebaseApp.configure()
        data.loadAlbums()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(data: data)
        }
    }
}
