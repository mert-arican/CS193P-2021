//
//  Lecture13_Publisher_More_PersistanceApp.swift
//  Lecture13-Publisher-More-Persistance
//
//  Created by Mert Arıcan on 12.02.2023.
//

import SwiftUI

@main
struct Lecture13_Publisher_More_PersistanceApp: App {
    @StateObject var document = EmojiArtDocument()
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
                .environmentObject(paletteStore)
        }
    }
}
