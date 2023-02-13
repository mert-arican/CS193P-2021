//
//  Lecture16_Multiplatform_macOS_iOSApp.swift
//  Lecture16-Multiplatform-macOS-iOS
//
//  Created by Mert Arıcan on 13.02.2023.
//

import SwiftUI

@main
struct Lecture16_Multiplatform_macOS_iOSApp: App {
    @StateObject var document = EmojiArtDocument()
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDocumentView(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}
