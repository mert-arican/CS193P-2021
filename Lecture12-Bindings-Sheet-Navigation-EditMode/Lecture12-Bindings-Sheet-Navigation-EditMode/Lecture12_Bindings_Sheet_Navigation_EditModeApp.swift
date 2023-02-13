//
//  Lecture12_Bindings_Sheet_Navigation_EditModeApp.swift
//  Lecture12-Bindings-Sheet-Navigation-EditMode
//
//  Created by Mert Arıcan on 11.02.2023.
//

import SwiftUI

@main
struct Lecture12_Bindings_Sheet_Navigation_EditModeApp: App {
    @StateObject var document = EmojiArtDocument()
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
                .environmentObject(paletteStore)
        }
    }
}
