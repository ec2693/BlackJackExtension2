//
//  Player.swift
//  BlackJackExtension
//
//  Created by Era Chaudhary on 3/3/15.
//  Copyright (c) 2015 Era Chaudhary. All rights reserved.
//

import Foundation


class Player{
    
    var balance : Int;
    
    var playerCards : [Int]
    
    var playerStatus : PlayerStatus
    
    var playerBet : Int = 0
    
    init(){
        playerBet = 0
        playerCards = []
        playerStatus = PlayerStatus.Statue
        balance = 100
    }
    
    func initializePlayer(){
        let shoe = Shoe()
        playerCards.append(shoe.getCardFromShoe())
        playerCards.append(shoe.getCardFromShoe())
    }
    
    var playerSum : Int {
        get{
            //Logic to get Ace as 1 or 11 is implemented below .
            var temp : Int = 0
            var acePresent:Bool = false
            for card in playerCards {
                temp += card
            }
            return temp
        }set{
            self.playerSum = newValue
        }
    }


    
    func isBlackJack() -> Bool {
        var temp = playerSum
        if  temp == 21 {
            return true
        }
        return false
    }
    
    func isBusted() -> Bool {
        var temp = playerSum
        
        if temp > 21 {
            return true
        }
        return false
        
    
    }
    
    
    func getStringOfCards(cardsInHand :[Int]) -> String {
        if(cardsInHand.count==0){
            return ""
        }
        var temp = ""
        if(cardsInHand[0]==1){
            var tempString = String(cardsInHand[0])+" ACE"
        }else{
            temp = String(cardsInHand[0])
        }
        
        if(cardsInHand.count>1){
            for i in 2...cardsInHand.count{
                if(cardsInHand[i-1]==1){
                    temp = temp + " : " + String(cardsInHand[i-1])+" ACE"
                }else{
                    temp = temp + " : " + String(cardsInHand[i-1])
                }
            }
        }
        return temp
    }

}
