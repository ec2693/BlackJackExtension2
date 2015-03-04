//
//  Dealer.swift
//  BlackJackExtension
//
//  Created by Era Chaudhary on 3/3/15.
//  Copyright (c) 2015 Era Chaudhary. All rights reserved.
//

import Foundation

class Dealer{
    
    var hand:[Int]=[]
    var sum:Int{
        get{
            var temp:Int = 0
            for i in 1...hand.count
            {
                temp = temp + hand[i-1]
            }
            return temp
        }
        set{
            
        }
    }

    init(){
        hand.append(Singleton.getObject.globalDeck.removeAtIndex(0))
        hand.append(Singleton.getObject.globalDeck.removeAtIndex(0))
    }
    
    
    
    
}