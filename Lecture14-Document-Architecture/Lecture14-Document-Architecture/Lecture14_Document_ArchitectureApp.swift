//
//  Lecture14_Document_ArchitectureApp.swift
//  Lecture14-Document-Architecture
//
//  Created by Mert Arıcan on 12.02.2023.
//

import SwiftUI

@main
struct Lecture14_Document_ArchitectureApp: App {
    @StateObject var document = EmojiArtDocument()
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDocumentView(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}
