//
//  Cards.swift
//  BlackJackOP
//
//  Created by MacBook on 27/10/2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

class Cards: DeckOfCards {
    var nomination: String?
    var value: Int {
        get {
            
                var a = self.nomination!
                a.removeLast()
                if Int(a) != nil {
                    return Int(a)!
                } else if a == "A" {
                    return 11
                } else {
                    return 10
                }
                
            }

    }
//    func ValueOfCard() -> Int {
//        var a = self.nomination!
//        a.removeLast()
//        if Int(a) != nil {
//        return Int(a)!
//    } else if a == "A" {
//        return 11
//    } else {
//        return 10
//    }
//
//    }
    
}

