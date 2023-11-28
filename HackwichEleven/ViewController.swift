//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Marijoy Jatico on 11/16/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        currentValue = Int(slider.value)
        startNewRound()
    }
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Guess the Number game", message: message,  preferredStyle:.alert)
                               
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
                               
         alert.addAction(action)
                               
         present(alert, animated: true, completion: nil)
        
        startNewRound()
        
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
    
        
    }
    
    @IBAction func sliderHasMoved(_ sender: Any) {
        
        print("The Value of the slider is:\(slider.value)")
        currentValue = Int((slider.value))
        
        
    }
    
    func startNewRound ()
    
    {
        targetValue = Int.random(in:0...100)
        currentValue = Int(slider.value)
        updateTargetLabel()
    }
        func updateTargetLabel ()
        {
            targetLabel.text = "\(targetValue)"
        }
        
    
    
    
    
    
    
    
    
}

