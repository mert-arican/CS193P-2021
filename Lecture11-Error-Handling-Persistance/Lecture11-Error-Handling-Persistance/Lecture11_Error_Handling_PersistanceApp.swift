//
//  Lecture11_Error_Handling_PersistanceApp.swift
//  Lecture11-Error-Handling-Persistance
//
//  Created by Mert Arıcan on 10.02.2023.
//

import SwiftUI

@main
struct Lecture11_Error_Handling_PersistanceApp: App {
    let document = EmojiArtDocument()
    let paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
