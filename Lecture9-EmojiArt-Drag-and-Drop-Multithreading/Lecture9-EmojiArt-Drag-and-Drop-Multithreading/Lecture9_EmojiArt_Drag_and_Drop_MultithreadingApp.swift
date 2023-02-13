//
//  Lecture9_EmojiArt_Drag_and_Drop_MultithreadingApp.swift
//  Lecture9-EmojiArt-Drag-and-Drop-Multithreading
//
//  Created by Mert Arıcan on 10.02.2023.
//

import SwiftUI

@main
struct Lecture9_EmojiArt_Drag_and_Drop_MultithreadingApp: App {
    let document = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
