//
//  Lecture6_Protocols_ShapesApp.swift
//  Lecture6-Protocols-Shapes
//
//  Created by Mert Arıcan on 9.02.2023.
//

import SwiftUI

@main
struct Lecture6_Protocols_ShapesApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
