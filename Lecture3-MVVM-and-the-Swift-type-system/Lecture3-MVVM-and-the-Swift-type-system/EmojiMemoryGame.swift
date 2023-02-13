//
//  EmojiMemoryGame.swift
//  Lecture3-MVVM-and-the-Swift-type-system
//
//  Created by Mert Arıcan on 8.02.2023.
//

import Foundation

class EmojiMemoryGame {
    static let emojis: [String] = ["🚲", "🚂", "🚁", "🚜", "🏎️", "🚀", "🚕", "🚓", "🚑", "🚒", "✈️", "⛵️", "🚌", "🛶", "🛵", "🚚", "🚗", "🚇", "🚝", "🛺", "🛸", "🏍️", "🚠", "🛻"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
