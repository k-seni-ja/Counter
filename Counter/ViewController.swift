//
//  ViewController.swift
//  Counter
//
//  Created by Ксения Штыркова on 03.02.2026.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var resetValueButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var storyTextView: UITextView!
    var counterValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func minusCounter(_ sender: Any) {
        //настройка Даты и времени
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let currentDate = dateFormatter.string(from: Date())
        // логика окна счетчика (UI Label)
        if counterValue > 0 {
            counterValue -= 1
        }
        counterLabel.text = "Значение счетчика:  \(counterValue)"
        //логика окна истории (UI TextView)
        if counterValue != 0 {
            storyTextView.text += "\n [\(currentDate)]: значение изменено на -1"
        }
        else{
            storyTextView.text += "\n [\(currentDate)]: попытка уменьшить значение счётчика ниже 0"
        }
        //настройка скроллинга
        let range = NSRange(location: storyTextView.text.count - 1, length: 1)
        storyTextView.scrollRangeToVisible(range)
    }
    
    
    @IBAction func plusCounter(_ sender: Any) {
        //настройка Даты и времени
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let currentDate = dateFormatter.string(from: Date())
        // логика окна счетчика (UI Label)
        counterValue += 1
        counterLabel.text = "Значение счетчика:  \(counterValue)"
        //логика окна истории (UI TextView)
        storyTextView.text += "\n [\(currentDate)]: значение изменено на +1"
        //настройка скроллинга
        let range = NSRange(location: storyTextView.text.count - 1, length: 1)
        storyTextView.scrollRangeToVisible(range)
    }
    
    
    @IBAction func resetValueCounter(_ sender: Any) {
        //настройка Даты и времени
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let currentDate = dateFormatter.string(from: Date())
        // логика окна счетчика (UI Label)
        counterValue = 0
        counterLabel.text = "Значение счетчика:  \(counterValue)"
        //логика окна истории (UI TextView)
        storyTextView.text += "\n [\(currentDate)]: значение сброшено"
        //настройка скроллинга
        let range = NSRange(location: storyTextView.text.count - 1, length: 1)
        storyTextView.scrollRangeToVisible(range)
    }
}

