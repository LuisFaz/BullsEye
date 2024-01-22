//
//  ViewController.swift
//  BullsEye
//
//  Created by Luis Faz on 1/21/24.
//

import UIKit
var targetValue = 0


class ViewController: UIViewController {
    var currentValue: Int = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    @IBAction func showAlert() {
      let message = "The value of the slider is: \(currentValue)" +
                    "\nThe target value is: \(targetValue)"
        let alert = UIAlertController(
            title: "Hello, World",
            message: message,    // changed
            preferredStyle: .alert)
        let action = UIAlertAction(
            title: "OK",          // changed
            style: .default,
            handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
    func startNewRound() {
      targetValue = Int.random(in: 1...100)
      currentValue = 50
      slider.value = Float(currentValue)
    }
    @IBOutlet var slider: UISlider!
}



