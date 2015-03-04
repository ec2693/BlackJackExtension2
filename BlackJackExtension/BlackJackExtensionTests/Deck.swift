//
//  Deck.swift
//  BlackJackExtension
//
//  Created by Era Chaudhary on 2/21/15.
//  Copyright (c) 2015 Era Chaudhary. All rights reserved.
//

import Foundation

class Deck {
    //To initialize deck
    var shuffledDeck = Array<Int>()
    
    var deck = Array<Int>()
    
    func createDeck(var numberOfDecks: Int) -> [Int]  {
        var Suit = ["Clubs","Spades","Hearts" , "Diamonds"]
        var Card = [1,2,3,4,5,6,7,8,9,10,10,10,10]
        
        
        for i in 1...numberOfDecks
        {
            for suits in Suit
            {
                for cards in Card {
                    deck.append(cards)
                }
            }
        }
        shuffle()
        return shuffledDeck
    }
    
    //Google
    func shuffle() {
        var temp: Int
        for i in 0...(deck.count-1) {
            let j = Int(arc4random_uniform(UnicodeScalarValue(deck.count)))
            println(j)
            temp = deck[i]
            println(i,j)
            deck[i]=deck[j]
            deck[j]=temp
            
        }
        shuffledDeck = deck
    }
    
    // To take card from deck
    func takeCardFromDeck() -> Int {
        return Singleton.getObject.globalDeck.removeAtIndex(0)
    }
    
}
