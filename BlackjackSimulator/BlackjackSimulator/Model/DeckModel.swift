//
//  DeckModel.swift
//  BlackjackSimulator
//
//  Created by Katherine Li on 1/15/19.
//  Copyright © 2019 Katherine Li. All rights reserved.
//

import Foundation

class DeckModel {
    
    let suitArray = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    let suitSymbol = ["club", "diamond", "heart", "spade"]
    var cards = [CardModel]()
    
    
    init() {
        buildCards()
    }
    
    func buildCards() {
        for number in suitArray {
            for symbol in suitSymbol {
                let card = CardModel(symbol: symbol, number: number)
                cards.append(card)
            }
        }
    }
}

