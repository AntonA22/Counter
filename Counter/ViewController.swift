//
//  ViewController.swift
//  Counter
//
//  Created by Антон Абалуев on 13.10.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var increaseButton: UIButton!
    @IBOutlet private weak var decreaseButton: UIButton!
    @IBOutlet private weak var zeroButton: UIButton!
    @IBOutlet private weak var historyText: UITextView!
    @IBOutlet private weak var textCount: UILabel!
    private var number: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    private func getTime() -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        let dateString = formatter.string(from: Date())
        return dateString
    }

    @IBAction private func clickIncreaseButton(_ sender: Any) {
        number += 1
        textCount.text = "Значение счётчика: \(number)"
        historyText.text += "\n[\(getTime())]: значение изменено на +1"
    }
    
    @IBAction private func clickDecreaseButton(_ sender: Any) {
        if number > 0 {
            number -= 1
            textCount.text = "Значение счётчика: \(number)"
            historyText.text += "\n[\(getTime())]: значение изменено на -1"
        } else {
            historyText.text += "\n[\(getTime())]:попытка уменьшить значение счётчика ниже 0"
        }
    }
    
    @IBAction private func clickZeroButton(_ sender: Any) {
        number = 0
        textCount.text = "0"
        historyText.text += "\n[\(getTime())]: значение сброшено"
    }
}

