//
//  Dealer.swift
//  BlackJackExtension
//
//  Created by Era Chaudhary on 3/3/15.
//  Copyright (c) 2015 Era Chaudhary. All rights reserved.
//

import Foundation

class Dealer{
    
    
    var dealerHand:[Int]
    
    let shoe:Shoe
    
    init(){
        dealerHand = []
        shoe = Shoe()
    }
    
    var dealerSum : Int {
        get{
            var tempSum : Int = 0
            for card in dealerHand {
                tempSum += card
            }
            return tempSum
        }set{
            self.dealerSum = newValue
        }
    }
    
    func initializeDealer(){
        dealerHand.append(shoe.getCardFromShoe())
        dealerHand.append(shoe.getCardFromShoe())
    }
    func isBusted() -> Bool {
        var tempCount = dealerSum
        
        if tempCount > 21 {
            return true
        }
        return false
    }
    
    
    func isBlackJack() -> Bool {
        var tempSum = dealerSum
        if  tempSum == 21 {
            return true
        }
        dealerSum = tempSum
        return false
    }
    
    
}