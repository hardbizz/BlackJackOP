//
//  Created by MacBook on 27/10/2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

class MemberOfGame: NSObject {
   var name:String = ""
    var totalSum = 100
    //var currentPoints = 0
    var cards: Array <Cards> = []
   // var tempPoints = 0
    var pressed: Bool = false
    
    var currentPoints: Int {
        get {
        if cards.count == 2 {
          
        var sum = 0
        for i in cards {
           sum+=i.value
            
        }
        if sum == 22 {
            
            return 12
            
        }
        else {
            
            return sum}
            
        }
            
        if cards.count == 3 {
            if cards[0].value == 11 && cards[1].value == 11 && cards[2].value == 11 {return 13}
            if cards[0].value == 11 && cards[1].value == 11 {return 12 + cards[2].value }
            
            if cards[2].value == 11 && (cards[0].value + cards[1].value + cards[2].value > 21) {
                return cards[0].value + cards[1].value + 1
            } else {
                return cards[0].value + cards[1].value + cards[2].value
            }
           
            
            
            
            
//               if self.cards[2].value == 11 && tempPoints + 11 > 21 {
//                tempPoints += 1
//               } else {
//                tempPoints+=self.cards[2].value
//                return tempPoints
//                }
            }
           return 0
    }
    
}
    
    func pressedAdd(_ player: MemberOfGame) {
        
        
        player.cards.append(Cards())
    }
    func playerChoose (_ player: MemberOfGame) {
        
        if senderT == "Добавить карту" {
            player.cards.append(Cards())
        }
        
    }
    
    func stepDealer(_ dealer: MemberOfGame) {
       // secondRing = true
        if dealer.currentPoints < 17 {
            dealer.cards.append(Cards())
        }
    }
    
}

