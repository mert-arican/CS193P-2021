//
//  Lecture8_Animation_DemonstrationApp.swift
//  Lecture8-Animation-Demonstration
//
//  Created by Mert Arıcan on 9.02.2023.
//

import SwiftUI

@main
struct Lecture8_Animation_DemonstrationApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
