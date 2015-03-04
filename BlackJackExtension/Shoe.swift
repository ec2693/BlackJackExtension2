//
//  shoe.shift
//  BlackJackExtension
//
//  Created by Era Chaudhary on 3/3/15.
//  Copyright (c) 2015 Era Chaudhary. All rights reserved.
//

import Foundation

class Shoe{
    
    var shoe:[Int] = []
    
    func createDeck(var numberOfDecks: Int){
        var suits=["Spades","Diamonds","Hearts","Clubs"]
        var cards=[1,2,3,4,5,6,7,8,9,10,10,10,10]
        
        for i in 1...numberOfDecks{
            for suit in suits{
                for card in cards{
                    shoe.append(card)
                }
            }
        }
        shuffle()
        Singleton.getObject.globalDeck=shoe
        
    }
    
    func shuffle() {
        var temp: Int
        for i in 0...(shoe.count-1) {
            let j = Int(arc4random_uniform(UnicodeScalarValue(shoe.count)))
            println(j)
            temp = shoe[i]
            println(i,j)
            shoe[i]=shoe[j]
            shoe[j]=temp
            
        }
    }
    
    
}