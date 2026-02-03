//
//  ViewController.swift
//  Counter
//
//  Created by Ксения Штыркова on 03.02.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var counterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var counterValue: Int = 0
    @IBAction func tapButton(_ sender: Any) {
        repeat {
            counterValue += 1
        }
        while counterValue > 1000
        counterLabel.text = "Значение счетчика:  \(counterValue)"
    }

    
}

