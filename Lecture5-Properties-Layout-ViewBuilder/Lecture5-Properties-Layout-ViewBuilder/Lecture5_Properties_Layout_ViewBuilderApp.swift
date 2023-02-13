//
//  Lecture5_Properties_Layout_ViewBuilderApp.swift
//  Lecture5-Properties-Layout-ViewBuilder
//
//  Created by Mert Arıcan on 8.02.2023.
//

import SwiftUI

@main
struct Lecture5_Properties_Layout_ViewBuilderApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
