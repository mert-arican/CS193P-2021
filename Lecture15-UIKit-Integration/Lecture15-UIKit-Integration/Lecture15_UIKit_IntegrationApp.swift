//
//  Lecture15_UIKit_IntegrationApp.swift
//  Lecture15-UIKit-Integration
//
//  Created by Mert Arıcan on 12.02.2023.
//

import SwiftUI

@main
struct Lecture15_UIKit_IntegrationApp: App {
    @StateObject var document = EmojiArtDocument()
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDocumentView(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}
