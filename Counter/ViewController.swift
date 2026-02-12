//
//  ViewController.swift
//  Counter
//
//  Created by Ксения Штыркова on 03.02.2026.
//

import UIKit

class ViewController: UIViewController {
    private var counterValue: Int = 0
    
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var resetValueButton: UIButton!
    @IBOutlet private weak var minusButton: UIButton!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var storyTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction private func minusCounter(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let currentDate = dateFormatter.string(from: Date())
        
        if counterValue > 0 {
            counterValue -= 1
        }
        counterLabel.text = "Значение счетчика:  \(counterValue)"
        
        if counterValue != 0 {
            storyTextView.text += "\n [\(currentDate)]: значение изменено на -1"
        }
        else{
            storyTextView.text += "\n [\(currentDate)]: попытка уменьшить значение счётчика ниже 0"
        }
        
        let range = NSRange(location: storyTextView.text.count - 1, length: 1)
        storyTextView.scrollRangeToVisible(range)
    }
    
    
    @IBAction private func plusCounter(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let currentDate = dateFormatter.string(from: Date())
        
        counterValue += 1
        counterLabel.text = "Значение счетчика:  \(counterValue)"
        
        storyTextView.text += "\n [\(currentDate)]: значение изменено на +1"
        
        let range = NSRange(location: storyTextView.text.count - 1, length: 1)
        storyTextView.scrollRangeToVisible(range)
    }
    
    
    @IBAction private func resetValueCounter(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        let currentDate = dateFormatter.string(from: Date())
        
        counterValue = 0
        counterLabel.text = "Значение счетчика:  \(counterValue)"
        
        storyTextView.text += "\n [\(currentDate)]: значение сброшено"
        
        let range = NSRange(location: storyTextView.text.count - 1, length: 1)
        storyTextView.scrollRangeToVisible(range)
    }
}

