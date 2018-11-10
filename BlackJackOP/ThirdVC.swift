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

    @IBOutlet weak var startButton: UIButton!
    
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
    
    @IBOutlet weak var addCardButton: UIButton!
    
    @IBOutlet weak var passCardButton: UIButton!
    
    @IBOutlet weak var openCardButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        playerPointsText.layer.cornerRadius = 13
        playerPointsText.layer.masksToBounds = true
        dealerPointsText.layer.cornerRadius = 13
        dealerPointsText.layer.masksToBounds = true
        startButton.layer.cornerRadius = 30
        startButton.layer.masksToBounds = true
        
        startButton.setTitle("Start!", for: .normal)
        
        bankLabel.layer.cornerRadius = 21
        bankLabel.layer.masksToBounds = true
        
        addCardButton.layer.cornerRadius = 20
        passCardButton.layer.cornerRadius = 20
        openCardButton.layer.cornerRadius = 20
        
        addCardButton.isEnabled = false
        passCardButton.isEnabled = false
        openCardButton.isEnabled = false
        
        playerName3.text = nameGamer
        print(nameGamer)
        card3text.text = ""
        card4text.text = ""
        card6text.text = ""
        dealerBankLabel.text = String(game.dealerBank)
        playerBankLabel.text = String(game.playerBank)
        
        startButton.isEnabled = true
        
    
    }
    
    
    @IBAction func startButton(_ sender: Any) {
        
    
        
        
        if startButton.titleLabel?.text == "Play again!" {
            viewDidLoad()
            game.restart()
        //    game.restart()
       //     print(startButton.titleLabel!.text)
       //     print("------restart-----")
            
      //      startButton.setTitle("Start!", for: .normal)
      //      startButton.setTitle("Start!", for: .normal)
            
        //    print(startButton.titleLabel!.text)
         //   print("------restart-----")
        }
        
        startButton.isEnabled = false
        addCardButton.isEnabled = true
        passCardButton.isEnabled = true
        openCardButton.isEnabled = true
        
       
        
        if game.over == false && winnerLabel.text != "" {
        print("strart pressed")
        print("s----------------------")
        card1text.text = ""
        card2text.text = ""
        card3text.text = ""
        card4text.text = ""
        card5text.text = ""
        card6text.text = ""
      //  let defaultLabelBackgroundcolor = card1text.backgroundColor
        //let transparentColor = UIColor(white: 1, alpha: 1)
      
        card1text.backgroundColor = UIColor.clear
        card2text.backgroundColor = UIColor.clear
        card3text.backgroundColor = UIColor.clear
        card4text.backgroundColor = UIColor.clear
        card5text.backgroundColor = UIColor.clear
        card6text.backgroundColor = UIColor.clear
        
        
        playerPointsText.text = String(player.currentPoints)
        dealerPointsText.text = ""
        player.cards.removeAll()
        dealer.cards.removeAll()
        
        bankLabel.text = String(game.bank) + "$"
        //        let player = MemberOfGame()
        //        let dealer = MemberOfGame()
        //
        player.name = nameGamer
        dealer.name = "dealer"
        // let game = Game()
        game.start()
        dealerBankLabel.text = String(game.dealerBank) + "$"
        playerBankLabel.text = String(game.playerBank) + "$"
        bankLabel.text = String(game.bank) + "$"
        game.secondRingPlayer = false
        game.secondRingDealer = false
        
        
        deck.createDeck()
        deck.shuffle()
        print("deck----------------------")
        
        
        card1.nomination = deck.giveCard()
        card2.nomination = deck.giveCard()
        card3.nomination = deck.giveCard()
        card4.nomination = deck.giveCard()
        card3text.text = ""
        card4text.text = ""
        card3text.backgroundColor = UIColor.red
        card4text.backgroundColor = UIColor.red
        
        
        player.cards.append(card1)
        player.cards.append(card2)
        dealer.cards.append(card3)
        dealer.cards.append(card4)
        
        card1text.backgroundColor = UIColor.yellow
        card1text.text = card1.nomination!
        card2text.backgroundColor = UIColor.yellow
        card2text.text = card2.nomination!
        // card3text.text = card3.nomination!
        // card4text.text = card4.nomination!
        playerPointsText.text = String(player.currentPoints)
        game.checkWinner(player,dealer)
        winnerLabel.text = game.winner
            if game.winner != "" {
                card3text.text = card3.nomination!
                card4text.text = card4.nomination!
                dealerPointsText.text = String(dealer.currentPoints)
                
                addCardButton.isEnabled = false
                passCardButton.isEnabled = false
                openCardButton.isEnabled = false
                startButton.isEnabled = true
            }
            
        
//        if player.cards.count == 3 { player.cards[2].nomination = deck.giveCard()
//
//            print(player.cards[2].nomination!)}
        
            game.checkGlobalWinner() }
            if game.globalWinner == "\(nameGamer)" || game.globalWinner == "DEALER" {
                winnerLabel.text = "\(game.globalWinner) WIN!!!!"
                startButton.setTitle("Play again!", for: .normal)
        
        
        }
    }
    
    @IBAction func addCardAction() {
        if game.over == false && game.winner == ""{
       // winnerLabel.text = " Игрок выбрал добавить карту"
        game.secondRingPlayer = true
        player.cards.append(Cards())
        
        player.cards[2].nomination = deck.giveCard()
        card5text.backgroundColor = UIColor.yellow
        card5text.text = player.cards[2].nomination!
        
        
       // card5text.backgroundColor = yellowColor
        
        
        playerPointsText.text = String(player.currentPoints)
        print("----winner")
        print(game.winner)
        game.checkWinner(player,dealer)
        print("----winner2")
        print(game.winner)
       // if game.over == false {
        game.secondRingDealer = true
        if dealer.currentPoints < 17 && player.currentPoints < 21{
            dealer.cards.append(Cards())
        }
        if dealer.cards.count == 3 { dealer.cards[2].nomination = deck.giveCard()
            card6text.text = dealer.cards[2].nomination!
            card6text.backgroundColor = UIColor.yellow
        }
             card3text.text = card3.nomination!
             card3text.backgroundColor = UIColor.yellow
             card4text.text = card4.nomination!
             card4text.backgroundColor = UIColor.yellow
             dealerPointsText.text = String(dealer.currentPoints)
        
  //  }
        
        if game.winner == "" {
            game.checkWinner(player,dealer)}
            winnerLabel.text = game.winner
            playerPointsText.text = String(player.currentPoints)
       
    
        
        
            dealerBankLabel.text = String(game.dealerBank) + "$"
            playerBankLabel.text = String(game.playerBank) + "$"
            bankLabel.text = ""
        
            game.checkGlobalWinner()
        }
        if game.globalWinner == "\(nameGamer)" || game.globalWinner == "DEALER" {
            winnerLabel.text = "\(game.globalWinner) WIN!!!!"
            startButton.setTitle("Play again!", for: .normal)
        }
        
        if game.winner != "" {
            addCardButton.isEnabled = false
            passCardButton.isEnabled = false
            openCardButton.isEnabled = false
            startButton.isEnabled = true
        }
        
    }
    
    
    @IBAction func passCardOrOpen(_ sender: Any) {
        if game.over == false && game.winner == ""{
       // winnerLabel.text = " Игрок решил не брать карту"
        game.secondRingPlayer = true
        
        
        
        //playerPointsText.text = String(player.currentPoints)
        
        game.secondRingDealer = true
        if dealer.currentPoints < 17 {
            dealer.cards.append(Cards())
        }
        if dealer.cards.count == 3 { dealer.cards[2].nomination = deck.giveCard()
            card6text.text = dealer.cards[2].nomination!
            card6text.backgroundColor = UIColor.yellow
        }
        card3text.text = card3.nomination!
        card3text.backgroundColor = UIColor.yellow
        card4text.text = card4.nomination!
        card4text.backgroundColor = UIColor.yellow
        
        dealerPointsText.text = String(dealer.currentPoints)
        
        
        game.checkWinner(player,dealer)
        winnerLabel.text = game.winner
        
        dealerBankLabel.text = String(game.dealerBank) + "$"
        playerBankLabel.text = String(game.playerBank) + "$"
        bankLabel.text = ""
        
        game.checkGlobalWinner()
        }
        if game.globalWinner == "\(nameGamer)" || game.globalWinner == "DEALER" {
            winnerLabel.text = "\(game.globalWinner) WIN!!!!"
            startButton.setTitle("Play again!", for: .normal)
            
            
        }
        
        
        
        if game.winner != "" {
            addCardButton.isEnabled = false
            passCardButton.isEnabled = false
            openCardButton.isEnabled = false
            startButton.isEnabled = true
        }
       // playerPointsText.text = String(player.currentPoints)
       // dealerPointsText.text = String(dealer.currentPoints)
    }
    
    
    @IBAction func openCardsLabel() {
        if game.over == false && game.winner == ""{
       // winnerLabel.text! += "\nИгрок захотел показать карты"
        game.secondRingPlayer = true
        game.secondRingDealer = true
        card3text.backgroundColor = UIColor.yellow
        card4text.backgroundColor = UIColor.yellow
    
     
        card3text.text = card3.nomination!
        card4text.text = card4.nomination!
        
        dealerPointsText.text = String(dealer.currentPoints)
        
        
        game.checkWinner(player,dealer)
        winnerLabel.text = game.winner
        playerPointsText.text = String(player.currentPoints)
        dealerPointsText.text = String(dealer.currentPoints)
        
        dealerBankLabel.text = String(game.dealerBank) + "$"
        playerBankLabel.text = String(game.playerBank) + "$"
        bankLabel.text = ""
        
        game.checkGlobalWinner()
        }
        
        if game.globalWinner == "\(nameGamer)" || game.globalWinner == "DEALER" {
            winnerLabel.text = "\(game.globalWinner) WIN!!!!"
            startButton.setTitle("Play again!", for: .normal)
            
        }
        if game.winner != "" {
            addCardButton.isEnabled = false
            passCardButton.isEnabled = false
            openCardButton.isEnabled = false
            startButton.isEnabled = true
            
            
        }
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
