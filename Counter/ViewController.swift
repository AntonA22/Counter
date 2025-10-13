//
//  ViewController.swift
//  Counter
//
//  Created by Антон Абалуев on 13.10.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var historyText: UITextView!
    @IBOutlet weak var textCount: UILabel!
    private var number: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func getTime() -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        let dateString = formatter.string(from: Date())
        return dateString
    }

    @IBAction func clickIncreaseButton(_ sender: Any) {
        number += 1
        textCount.text = "Значение счётчика: \(number)"
        historyText.text += "\n[\(getTime())]: значение изменено на +1"
    }
    
    @IBAction func clickDecreaseButton(_ sender: Any) {
        if number > 0 {
            number -= 1
            textCount.text = "Значение счётчика: \(number)"
            historyText.text += "\n[\(getTime())]: значение изменено на -1"
        } else {
            historyText.text += "\n[\(getTime())]:попытка уменьшить значение счётчика ниже 0"
        }
    }
    
    @IBAction func clickZeroButton(_ sender: Any) {
        number = 0
        textCount.text = "0"
        historyText.text += "\n[\(getTime())]: значение сброшено"
    }
}

