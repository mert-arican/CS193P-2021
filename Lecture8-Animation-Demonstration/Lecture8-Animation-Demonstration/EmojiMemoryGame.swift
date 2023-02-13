//
//  EmojiMemoryGame.swift
//  Lecture3-MVVM-and-the-Swift-type-system
//
//  Created by Mert Arıcan on 8.02.2023.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis: [String] = ["🚲", "🚂", "🚁", "🚜", "🏎️", "🚀", "🚕", "🚓", "🚑", "🚒", "✈️", "⛵️", "🚌", "🛶", "🛵", "🚚", "🚗", "🚇", "🚝", "🛺", "🛸", "🏍️", "🚠", "🛻"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
