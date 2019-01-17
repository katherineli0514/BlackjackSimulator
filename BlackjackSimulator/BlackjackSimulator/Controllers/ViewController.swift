//
//  ViewController.swift
//  BlackjackSimulator
//
//  Created by Katherine Li on 1/14/19.
//  Copyright © 2019 Katherine Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userCardsCollectionView: UICollectionView!
    @IBOutlet weak var userCalculatorHandLabel: UILabel!
    @IBOutlet weak var resultLabel: NSLayoutConstraint!
    @IBOutlet weak var dealerCalculatorHandLabel: UILabel!
    @IBOutlet weak var dealerCardsCollectionView: UICollectionView!
    
    let deckViewModel = DeckViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deckViewModel.shuffleDeck()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    @IBAction func userHitButtonClicked(_ sender: UIButton) {
        self.deckViewModel.drawCard()
        self.userCalculatorHandLabel.text = String(self.deckViewModel.calculatedHand)
    }
    
    @IBAction func startButtonClicked(_ sender: UIButton) {
        self.deckViewModel.startNewGame()
        self.userCalculatorHandLabel.text = ""
    }
    
    @IBAction func stayButtonClicked(_ sender: UIButton) {
        // TODO: Dealer should start drawing cards
        self.deckViewModel.refreshCalculatedData()
    }
    
    @IBAction func dealerHitButtonClicked(_ sender: UIButton) {
        self.deckViewModel.drawCard()
        self.dealerCalculatorHandLabel.text = String(self.deckViewModel.calculatedHand)
        
    }
}

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // TODO: Need to user different number for the items
        if collectionView == self.userCardsCollectionView {
            return self.deckViewModel.numberOfCards()
        } else if collectionView == self.dealerCardsCollectionView {
            return self.deckViewModel.numberOfCards()
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // TODO: Need to use different strategies for two collectionViews
        
        
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserCardCell", for: indexPath) as? UserCardsCollectionViewCell {
            // TODO: setup userView Cell
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
}

