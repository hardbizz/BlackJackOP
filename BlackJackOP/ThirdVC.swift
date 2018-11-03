//
//  ThirdVC.swift
//  BlackJackOP
//
//  Created by MacBook on 01/11/2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit
let player = MemberOfGame()
let dealer = MemberOfGame()
let deck = DeckOfCards()

let card1 = Cards()
let card2 = Cards()
let card3 = Cards()
let card4 = Cards()
let game = Game()



class ThirdVC: UIViewController {

    @IBOutlet weak var playerName3: UILabel!
    
    @IBOutlet weak var card1text: UILabel!
    
    @IBOutlet weak var card2text: UILabel!
    
    @IBOutlet weak var card5text: UILabel!
    
    @IBOutlet weak var card3text: UILabel!
    
    @IBOutlet weak var card4text: UILabel!
    
    @IBOutlet weak var card6text: UILabel!
    
    @IBOutlet weak var playerPointsText: UILabel!
    
    @IBOutlet weak var dealerPointsText: UILabel!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var dealerBankLabel: UILabel!
    
    @IBOutlet weak var playerBankLabel: UILabel!
    @IBOutlet weak var bankLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playerName3.text = nameGamer
        print(nameGamer)
        card3text.text = ""
        card4text.text = ""
        card6text.text = ""
        dealerBankLabel.text = String(dealerBank)
        playerBankLabel.text = String(playerBank)
        
////        let player = MemberOfGame()
////        let dealer = MemberOfGame()
////
//       player.name = "player"
//       dealer.name = "dealer"
//       // let game = Game()
//        game.start()
//        secondRing = false
//        //print (game.bank)
//      // print(playerBank)
//       // print(dealerBank)
////        let deck = DeckOfCards()
//       deck.createDeck()
//        deck.shuffle()
////        let card1 = Cards()
////        let card2 = Cards()
////        let card3 = Cards()
////        let card4 = Cards()
//
//        card1.nomination = deck.giveCard()
//        card2.nomination = deck.giveCard()
//        card3.nomination = deck.giveCard()
//        card4.nomination = deck.giveCard()
//
//
//
//        player.cards.append(card1)
//        player.cards.append(card2)
//        dealer.cards.append(card3)
//        dealer.cards.append(card4)
//
//
//        card1text.text = card1.nomination!
//        card2text.text = card2.nomination!
//       // card3text.text = card3.nomination!
//       // card4text.text = card4.nomination!
//        playerPointsText.text = String(player.currentPoints)
//        game.checkWinner(player,dealer)
//       winnerLabel.text = game.winner
//        if player.cards.count == 3 { player.cards[2].nomination = deck.giveCard()
//
//            print(player.cards[2].nomination!)}
      
        
       // addCardAction()
       // if player.cards.count == 3 { player.cards[2].nomination = deck.giveCard()
            
      //      print(player.cards[2].nomination!)}
     //   player.playerChoose(player)
     //   card5text.text = player.cards[2].nomination!
        
        
    }
    
    
    @IBAction func startButton(_ sender: Any) {
        print("strart pressed")
        print("s----------------------")
        card1text.text = ""
        card2text.text = ""
        card3text.text = ""
        card4text.text = ""
        card5text.text = ""
        card6text.text = ""
        
        playerPointsText.text = String(player.currentPoints)
        dealerPointsText.text = ""
        player.cards.removeAll()
        dealer.cards.removeAll()
        
        bankLabel.text = String(game.bank)
        //        let player = MemberOfGame()
        //        let dealer = MemberOfGame()
        //
        player.name = nameGamer
        dealer.name = "dealer"
        // let game = Game()
        game.start()
        dealerBankLabel.text = String(dealerBank)
        playerBankLabel.text = String(playerBank)
        bankLabel.text = String(game.bank)
        secondRing = false
        //print (game.bank)
        // print(playerBank)
        // print(dealerBank)
        //        let deck = DeckOfCards()
        
        deck.createDeck()
        deck.shuffle()
        print("deck----------------------")
        
        //        let card1 = Cards()
        //        let card2 = Cards()
        //        let card3 = Cards()
        //        let card4 = Cards()
        
        card1.nomination = deck.giveCard()
        card2.nomination = deck.giveCard()
        card3.nomination = deck.giveCard()
        card4.nomination = deck.giveCard()
        card3text.text = "*"
        card4text.text = "*"
        
        
        
        player.cards.append(card1)
        player.cards.append(card2)
        dealer.cards.append(card3)
        dealer.cards.append(card4)
        
        
        card1text.text = card1.nomination!
        card2text.text = card2.nomination!
        // card3text.text = card3.nomination!
        // card4text.text = card4.nomination!
        playerPointsText.text = String(player.currentPoints)
        game.checkWinner(player,dealer)
        winnerLabel.text = game.winner
        
//        if player.cards.count == 3 { player.cards[2].nomination = deck.giveCard()
//
//            print(player.cards[2].nomination!)}
    }
    
    @IBAction func addCardAction() {
        
        winnerLabel.text = " Игрок выбрал добавить карту"
        secondRing = true
        player.cards.append(Cards())
        
        player.cards[2].nomination = deck.giveCard()
        
        card5text.text = player.cards[2].nomination!
        
        var colorCards = card1text.backgroundColor
        card5text.backgroundColor = card1text.backgroundColor
        
        
        playerPointsText.text = String(player.currentPoints)
        print("----winner")
        print(game.winner)
        game.checkWinner(player,dealer)
        print("----winner2")
        print(game.winner)
        if game.over == false {
        secondRing = true
        if dealer.currentPoints < 17 {
            dealer.cards.append(Cards())
        }
        if dealer.cards.count == 3 { dealer.cards[2].nomination = deck.giveCard()
            card6text.text = dealer.cards[2].nomination!
        }
             card3text.text = card3.nomination!
             card4text.text = card4.nomination!
        
            dealerPointsText.text = String(dealer.currentPoints) }
        
        if game.winner == "" {
            game.checkWinner(player,dealer)}
            winnerLabel.text = game.winner
        playerPointsText.text = String(player.currentPoints)
         //   dealerPointsText.text = String(dealer.currentPoints)
            
      
         //   playerPointsText.text = String(player.currentPoints)
           // winnerLabel.text = game.winner
    
        
        
        dealerBankLabel.text = String(dealerBank)
        playerBankLabel.text = String(playerBank)
        bankLabel.text = ""
        
    }
    
    
    @IBAction func passCardOrOpen(_ sender: Any) {
        winnerLabel.text = " Игрок решил не брать карту"
        secondRing = true
        
        
        
        //playerPointsText.text = String(player.currentPoints)
        
        secondRing = true
        if dealer.currentPoints < 17 {
            dealer.cards.append(Cards())
        }
        if dealer.cards.count == 3 { dealer.cards[2].nomination = deck.giveCard()
            card6text.text = dealer.cards[2].nomination!
        }
        card3text.text = card3.nomination!
        card4text.text = card4.nomination!
        
        dealerPointsText.text = String(dealer.currentPoints)
        
        
        game.checkWinner(player,dealer)
        winnerLabel.text = game.winner
        
        dealerBankLabel.text = String(dealerBank)
        playerBankLabel.text = String(playerBank)
        bankLabel.text = ""
       // playerPointsText.text = String(player.currentPoints)
       // dealerPointsText.text = String(dealer.currentPoints)
    }
    
    
    @IBAction func openCardsLabel() {
        winnerLabel.text! += "\nИгрок захотел показать карты"
        secondRing = true
        
        
        
        
        
       // playerPointsText.text = String(player.currentPoints)
        
       // secondRing = true
     
        card3text.text = card3.nomination!
        card4text.text = card4.nomination!
        
        dealerPointsText.text = String(dealer.currentPoints)
        
        
        game.checkWinner(player,dealer)
        winnerLabel.text = game.winner
        playerPointsText.text = String(player.currentPoints)
        dealerPointsText.text = String(dealer.currentPoints)
        
        dealerBankLabel.text = String(dealerBank)
        playerBankLabel.text = String(playerBank)
        bankLabel.text = ""
    }
    
    
   
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
