//
//  DeckOfCards.swift
//  BlackJackOP
//
//  Created by MacBook on 27/10/2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

class DeckOfCards: NSObject {
    private var suit = ["♦️", "♣️", "♠️", "♥️"]
    private var rank = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
    
   var deck: Array <String> = ["0"]
    func createDeck () {
        deck.removeAll()
            for i in 0..<rank.count {
            for j in 0..<suit.count {
                deck.append(rank[i] + suit[j])
            }
        }
    }
    
    func shuffle() {
            for i in 0..<deck.count {
                let random = Int(arc4random()%52)
                var temp: String
                temp = deck[i]
                deck[i] = deck[random]
                deck[random] = temp
            
        }
    }
    
    func giveCard() -> String {
        return deck.removeFirst()
    }
    
//    func calcValueOfCard() -> Int {
//       var a = self.nomination!
//        a.removeLast()
//        if Int(a) != nil {
//            return Int(a)!
//        } else if a == "A" {
//        return 11
//        } else {
//            return 10
//        }
//            
//        
//    }
    
    
    
    
    func dealAcard() {
        
        
    }
    
    
}
