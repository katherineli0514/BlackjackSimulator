//
//  CardModel.swift
//  BlackjackSimulator
//
//  Created by Katherine Li on 1/16/19.
//  Copyright © 2019 Katherine Li. All rights reserved.
//

import Foundation

class CardModel {
    let symbol: String
    let number: String
    
    init(symbol: String, number: String) {
        self.symbol = symbol
        self.number = number
    }
}

extension CardModel: Equatable {
    public static func ==(lhs: CardModel, rhs: CardModel) -> Bool {
        if lhs.number == rhs.number && lhs.symbol == rhs.symbol {
            return true
        } else {
            return false
        }
    }
}
