//
//  ViewController.swift
//  BlackJackOP
//
//  Created by MacBook on 27/10/2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit
var nameGamer = ""
class ViewController: UIViewController {

    @IBOutlet weak var fromTextFiledName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
     // singleGame()
       nameGamer = fromTextFiledName.text!

    
     /*   let player = MemberOfGame()
        let dealer = MemberOfGame()
        secondRing = false
        player.name = "player"
        dealer.name = "dealer"
        let game = Game()
        game.start()
        print (game.bank)
        print(playerBank)
        print(dealerBank)
        var deck = DeckOfCards()
        deck.createDeck()
        deck.shuffle()
        let card1 = Cards()
        let card2 = Cards()
        let card3 = Cards()
        let card4 = Cards()
        
        card1.nomination = deck.giveCard()
        card2.nomination = deck.giveCard()
        card3.nomination = deck.giveCard()
        card4.nomination = deck.giveCard()
        
        
        
        player.cards.append(card1)
        player.cards.append(card2)
        dealer.cards.append(card3)
        dealer.cards.append(card4)
        
        print(card1.nomination!,card2.nomination!)
        print(card3.nomination!,card4.nomination!)
        print(player.currentPoints)
        print(dealer.currentPoints)
        
        game.checkWinner(player,dealer)
       
        print(playerBank)
        print(dealerBank)
        
        
        //player.pressedAdd(player)
        player.playerChoose(player)
        
        if player.cards.count == 3 { player.cards[2].nomination = deck.giveCard()
            
            print(player.cards[2].nomination!)}
       
        print(game.winner)
        //}
        
        print(player.currentPoints)
        
        //            if player.currentPoints > 21 {
        //                 print("--------prebor player----------")
        //                 print("Победил dealer")
        //                print("-----prebor player--------")
        //                    game.winner = "dealer"
        //                    dealerBank+=game.bank
        //                print(playerBank)
        //                print(dealerBank)
        //                return
        //     }
        print(game.winner)
        print("---------www-----------")
        dealer.stepDealer(dealer)
        if dealer.cards.count == 3 { dealer.cards[2].nomination = deck.giveCard()
            print(dealer.cards[2].nomination!)}
        
        print(dealer.currentPoints)
        
        
        print("---------3----------")
        game.checkWinner(player,dealer)
        print("---------3----------")
        
        
        //            if player.cards.count == 2 && dealer.cards.count == 2 {
        //                if player.currentPoints > dealer.currentPoints {
        //                    print("Победил player")
        //                    game.winner = "player"
        //                    playerBank+=game.bank
        //                } else {
        //                    print("Победил dealer")
        //                    game.winner = "dealer"
        //                    dealerBank+=game.bank
        //                }
        //
        //            }
        //print(player.currentPoints)
        // print(dealer.currentPoints)
        
        //  game.checkWinner(player,dealer)
        
        print(playerBank)
        print(dealerBank)
        
        //          print(player.currentPoints)
        //          print(player.cards[2].nomination!)
        
        
        
        //  }
    
    
 */

    }
    @IBAction func startButtonclick() {
        nameGamer = fromTextFiledName.text!
    }
}



