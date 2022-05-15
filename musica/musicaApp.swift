

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
