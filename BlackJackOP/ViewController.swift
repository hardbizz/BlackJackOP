//
//  ViewController.swift
//  BlackJackOP
//
//  Created by MacBook on 27/10/2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       let player = MemberOfGame()
       let dealer = MemberOfGame()
        player.name = "player"
        dealer.name = "dealer"
        let game = Game()
        game.start()
        print (game.bank)
        print(game.playerBank)
        print(game.dealerBank)
        var deck = DeckOfCards()
        deck.createDeck()
        deck.shuffle()
       // print(player.cards)
        let card1 = Cards()
        let card2 = Cards()
        let card3 = Cards()
        let card4 = Cards()
       // let card5 = Cards()
      //  let card6 = Cards()
        card1.nomination = deck.giveCard()
        card2.nomination = deck.giveCard()
        card3.nomination = deck.giveCard()
        card4.nomination = deck.giveCard()
       // card5.nomination = deck.giveCard()
       // card6.nomination = deck.giveCard()
        player.cards.append(card1)
        player.cards.append(card2)
        dealer.cards.append(card3)
        dealer.cards.append(card4)
//        player.cards.append(card1.nomination!)
//        player.cards.append(card2.nomination!)
//        dealer.cards.append(card3.nomination!)
//        dealer.cards.append(card4.nomination!)
      //  print(player.calcPoints())
      //  print(dealer.calcPoints())
          print(card1.nomination!)
          print(card2.nomination!)
          print(card3.nomination!)
          print(card4.nomination!)
          print(player.currentPoints)
          print(dealer.currentPoints)
        if player.currentPoints == 21 || dealer.currentPoints == 21{
            game.checkWinner(player,dealer)}
        if player.currentPoints < 21 && dealer.currentPoints < 21 {
            player.pressedAdd(player)
            dealer.stepDealer(dealer)
            if player.cards.count == 3 { player.cards[2].nomination = deck.giveCard()
                game.checkWinner(player,dealer)
            }
            if dealer.cards.count == 3 { dealer.cards[2].nomination = deck.giveCard()
                game.checkWinner(player,dealer)
            }
            print(player.currentPoints)
            print(dealer.currentPoints)
           // game.checkWinner(player,dealer)
            print(game.playerBank)
            print(game.dealerBank)
            
//          print(player.currentPoints)
//          print(player.cards[2].nomination!)
         
        
        
        }
    }
    

}

