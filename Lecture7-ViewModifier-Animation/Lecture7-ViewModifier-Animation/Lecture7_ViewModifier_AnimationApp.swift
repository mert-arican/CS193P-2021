//
//  Lecture7_ViewModifier_AnimationApp.swift
//  Lecture7-ViewModifier-Animation
//
//  Created by Mert Arıcan on 9.02.2023.
//

import SwiftUI

@main
struct Lecture7_ViewModifier_AnimationApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
