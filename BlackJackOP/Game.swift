//
//  Game.swift
//  BlackJackOP
//
//  Created by MacBook on 28/10/2018.
//  Copyright © 2018 Bizz. All rights reserved.
//
/*
 
 Механика и правила игры:
 
 • Есть игрок (пользователь) и дилер (управляется программой).
 • Вначале, запрашиваем у пользователя имя после чего, начинается игра.
 • При начале игры у пользователя и дилера в банке находится 100 долларов
 • Пользователю выдаются случайные 2 карты, которые он видит (карты указываем условными обозначениями, например, «К+» - король крестей, «К<3» - король черв, «К^» - король пик, «К<>» - король бубен и т.д. При желании, можете использовать символы юникода для мастей.)
 • Также 2 случайные карты выдаются «дилеру», против которого играет пользователь. Пользователь не видит карты дилера, вместо них показываются звездочки.
 • Пользователь видит сумму своих очков. Сумма считается так: от 2 до 10 - по номиналу карты, все «картинки» - по 10, туз - 1 или 11, в зависимости от того, какое значение будет ближе к 21 и что не ведет к проигрышу (сумме более 21).
 • После раздачи, автоматически делается ставка в банк игры в размере 10 долларов от игрока и диллера. (У игрока и дилера вычитается 10 из банка)
 •  После этого ход переходит пользователю. У пользователя есть на выбор 3 варианта:
 - Пропустить. В этом случае, ход переходит к дилеру (см. ниже)
 - Добавить карту. (только если у пользователя на руках 2 карты). В этом случае игроку добавляется еще одна случайная карта, сумма очков пересчитывается, ход переходит дилеру. Может быть добавлена только одна карта.
 - Открыть карты. Открываются карты дилера и игрока, игрок видит сумму очков дилера, идет подсчет результатов игры (см. ниже).
 •  Ход дилера (управляется программой, цель - выиграть, т.е набрать сумму очком, максимально близкую к 21). Дилер может:
 - Пропустить ход (если очков у дилера 17 или более). Ход переходит игроку.
 - Добавить карту (если очков менее 17). У дилера появляется новая карта (для пользователя закрыта). После этого ход переходит игроку. Может быть добавлена только одна карта.
 •   Игроки вскрывают карты либо по достижению у них по 3 карты (автоматически), либо когда пользователь выберет вариант «Открыть карты». После этого пользователь видит карты дилера и сумму его очков, а также результат игры (кто выиграл и кто проиграл).
 • Подсчет результатов:
 - Выигрывает игрок, у которого сумма очков ближе к 21
 - Если у игрока сумма очков больше 21, то он проиграл
 - Если сумма очков у игрока и дилера одинаковая, то объявляется ничья и деньги из банка возвращаются игрокам
 - Сумма из банка игры переходит к выигравшему
 • После окончания игры, спрашиваем у пользователя, хочет ли он сыграть еще раз. Если да, то игра начинается заново с раздачи карт, если нет - то завершаем работу.*/

import UIKit
//var playerBank = 100
//var dealerBank = 100
//var secondRingPlayer = false
//var secondRingDealer = false
//var gameOver = false
//var globalWinner = ""
//var senderT = "Добавить карту"
class Game: DeckOfCards{
    
    var bank = 0
    var over = false // game.over = true - конец игры
    let bet = 50
    func start() {
        winner = ""
        bank = 2*bet
        playerBank -= bet
        dealerBank -= bet
    }
    
    var winner = ""
    var globalWinner = ""
    var secondRingPlayer = false
    var secondRingDealer = false
    var playerBank = 100
    var dealerBank = 100
    func restart() {
        
        playerBank = 100
        dealerBank = 100
        over = false
        globalWinner = ""
        winner = ""
        
    }
   
    
    
    func checkWinner(_ player1: MemberOfGame, _ player2: MemberOfGame) {
        if secondRingPlayer == false && secondRingDealer == false{
            if player1.currentPoints == 21 && player2.currentPoints == 21 {
             print("Ничья после первого круга")
                winner = "Ничья"
                playerBank += bet
                dealerBank += bet
                bank = 0
                return
            }
           if  player1.currentPoints == 21 {
            print("Победил \(player1.name)")
            print("-----у кого-то 21 первый круг-----")
            winner = "Победил \(player1.name)"
            playerBank += bank
            return
            }
            if  player2.currentPoints == 21 {
                print("Победил \(player2.name)")
                print("-----у кого-то 21 первый круг-----")
                winner = "Победил \(player2.name)"
                dealerBank += bank
                return
            }
            if player1.currentPoints > 21 && secondRingPlayer == true && secondRingDealer == false {
                print("PEREBOR u \(nameGamer)")
                //self.over = true
                winner = "Победил \(player2.name)"
                dealerBank += bank
                return
            }
        }
        if secondRingPlayer == true && secondRingDealer == true{
           
            
            if player2.currentPoints == 21 && player1.currentPoints == 21  {
                print("ничья по 21 во втором кругу")
                winner = "Ничья"
                playerBank += bet
                dealerBank += bet
                return
            }
            if player1.currentPoints > 21 || player2.currentPoints == 21  {
                print("Перебор у игрока или у диллера 21 во втором кругу")
                print("Победил диллер")
                winner = "Победил \(player2.name)"
                dealerBank += bank
                return
            }
            if player2.currentPoints > 21 || player1.currentPoints == 21  {
                print("Перебор у диллера или у игрока 21 во втором кругу")
                print("Победил игрок")
                self.winner = "Победил \(player1.name)"
                playerBank += bank
                return
            }
            if player1.currentPoints < 21 && player2.currentPoints < 21 {
                if player1.currentPoints > player2.currentPoints {
                    print("Победил игрок")
                    winner = "Победил \(player1.name)"
                    playerBank += bank
                    return
                }
                if player2.currentPoints > player1.currentPoints {
                    print("Победил диллер")
                    winner = "Победил \(player2.name)"
                    dealerBank += bank
                    return
            }
                if player1.currentPoints == player2.currentPoints {
                    print("Ничья после второго круга")
                    self.winner = "Ничья"
                    playerBank += bet
                    dealerBank += bet
                    //bank = 0
                    return
            
        }
        
        
        
        
    }
    
}
}
    
    func checkGlobalWinner() {
        if dealerBank == 200 {
            over = true
            globalWinner = "DEALER"
            
        }
        if playerBank == 200 {
            over = true
            globalWinner = "\(nameGamer)"
        }
        
    }
    
    
}
