//
//  Lecture4_Memorize_Game_LogicApp.swift
//  Lecture4-Memorize-Game-Logic
//
//  Created by Mert Arıcan on 8.02.2023.
//

import SwiftUI

@main
struct Lecture4_Memorize_Game_LogicApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
