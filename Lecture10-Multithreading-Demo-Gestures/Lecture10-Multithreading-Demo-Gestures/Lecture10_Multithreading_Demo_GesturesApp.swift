//
//  Lecture10_Multithreading_Demo_GesturesApp.swift
//  Lecture10-Multithreading-Demo-Gestures
//
//  Created by Mert Arıcan on 10.02.2023.
//

import SwiftUI

@main
struct Lecture10_Multithreading_Demo_GesturesApp: App {
    let document = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: document)
        }
    }
}
