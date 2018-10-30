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
    private var tempPoints = 0
    var pressed: Bool = false
    
    var currentPoints: Int {
        get {
        if cards.count == 2 {
        var sum = 0
        for i in cards {
           sum+=i.value
        }
        if sum == 22 {
            self.tempPoints = 12
            return 12
            
        }
        else {
            tempPoints = sum
            return sum}
            
        }
            if cards.count == 3 {
               if self.cards[2].value == 11 && tempPoints + 11 > 21 {
                tempPoints += 1
               } else {
                tempPoints+=self.cards[2].value
                return tempPoints
                }
            }
           return 0
    }
    
}
    
    func pressedAdd(_ player: MemberOfGame) {
        player.cards.append(Cards())
        
    }
    func stepDealer(_ dealer: MemberOfGame) {
        if dealer.currentPoints < 17 {
            dealer.cards.append(Cards())
        }
    }
    
}

