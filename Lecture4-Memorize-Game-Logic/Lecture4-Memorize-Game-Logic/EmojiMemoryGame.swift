//
//  EmojiMemoryGame.swift
//  Lecture3-MVVM-and-the-Swift-type-system
//
//  Created by Mert Arıcan on 8.02.2023.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    static let emojis: [String] = ["🚲", "🚂", "🚁", "🚜", "🏎️", "🚀", "🚕", "🚓", "🚑", "🚒", "✈️", "⛵️", "🚌", "🛶", "🛵", "🚚", "🚗", "🚇", "🚝", "🛺", "🛸", "🏍️", "🚠", "🛻"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
