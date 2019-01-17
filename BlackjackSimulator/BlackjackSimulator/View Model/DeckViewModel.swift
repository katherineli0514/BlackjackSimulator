//
//  DeckViewModel.swift
//  BlackjackSimulator
//
//  Created by Katherine Li on 1/15/19.
//  Copyright © 2019 Katherine Li. All rights reserved.
//

import Foundation

class DeckViewModel {
    
    let deckModel = DeckModel()
//    let userViewModel = UserViewModel()
//    let dealerViewModel = DealerViewModel()
    
    var deckDic = [String: String]()
    var shuffledCards = Array<CardModel?>(repeating: nil, count: 52)
    
    // TODO: Need to figure out drawCards are from user or dealer
    var drawCards = [CardModel]()
    var calculatedHand = 0
    
    func shuffleDeck()  {
        let cards = deckModel.cards
        var deckIndexRandoms = Set(0..<52)
        for index in 0..<cards.count {
            if let randomIndex = deckIndexRandoms.randomElement() {
                shuffledCards[randomIndex] = cards[index]
                deckIndexRandoms.remove(randomIndex)
            }
        }
    }
    
    func drawCard() {
        if let card = shuffledCards.first, let unwrappedCard = card {
            shuffledCards.removeFirst()
            self.drawCards.append(unwrappedCard)
            let point = getCardPoint(card: unwrappedCard)
            calculateHand(point: point)
        }
    }
    
    func numberOfCards() -> Int {
        return self.drawCards.count
    }
}

// MARK: Game related functions
extension DeckViewModel {
    func getCardPoint(card: CardModel) -> Int {
        var point = 0
        switch card.number {
        case "A":
            // TODO: Could be 1 or 11
            break
        case "10", "J", "Q", "K":
            point = 10
        default:
            point = Int(card.number)!
        }
        return point
    }
    
    func calculateHand(point: Int) {
        self.calculatedHand += point
//        if self.calculatedHand > 21 {
//            // TODO: User Busted! Dealer wins. Update Result Label on UI
//        }
    }
    
    func refreshCalculatedData() {
        self.calculatedHand = 0
        self.drawCards = []
    }
    
    func startNewGame() {
        self.refreshCalculatedData()
    }
    
    func result() {
        /*
         TODO:
            1. If user calculatedHand > 21 -> Dealer Win!
            2. If user calculatedHand > Dealer calculatedHand -> User Win!
            3. If dealer calcualtedHand > 21 -> User Win!
            4. If user calculatedHand < Dealer calculatedHand -> Dealer Win!
        */
    }
}
