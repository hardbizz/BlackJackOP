//
//  SecondVC.swift
//  BlackJackOP
//
//  Created by MacBook on 01/11/2018.
//  Copyright © 2018 Bizz. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textViewField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewField.text = "Задача не набрать 21, а выиграть у диллера (у казино). Игроку и диллеру выдается по 2 карты. Вы можете добавить, не добавлять себе карту, а также просмотреть карты. Больше 21 - перебор, автоматический проигрыш. Ровно 21 - сразу же победа. Если после второго круга у обоих меньше 21, выигрывает тот, у кого больше. Так же есть ничья. Деньги возвращаются обоим. Очки считаются так: от 2 до 10 - по своему номиналу, валет, дама, король - 10, туз - 11 (или 1). Карты открываются и победитель определяется если у обоих по 3 карты. Диллер(компьютер)  автоматически берет карту, если у него меньше 17 очков. Туз, приходящий второй и/или третьей картой, можно считать за 1 очко, если при 11 перебор.  На старте по 100$, ставка 10."
        playButton.layer.cornerRadius = 45
        textViewField.layer.cornerRadius = 12
        textViewField.isHidden = true
        label.text = "Hello, \(nameGamer)! You task is win Dealer in game, not collect 21, but closer to it"
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
       textViewField.isHidden = !textViewField.isHidden
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
