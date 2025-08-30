//
//  CardSelectionViewController.swift
//  CardWorkoutApp
//
//  Created by Shashank Yadav on 22/07/25.
//

import UIKit

class CardSelectionViewController: UIViewController {
    
    var timer:Timer!
    
    var cards:[UIImage] = Deck.allValues
    
    @IBOutlet weak var CardImageView: UIImageView!
    
    @IBOutlet weak var StopButton: UIButton!
    
    
    @IBOutlet weak var RestartButton: UIButton!
    
    @IBOutlet weak var RulesButton: UIButton!
    
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
        
       /* StopButton.layer.cornerRadius = 8
        RestartButton.layer.cornerRadius = 8
        RulesButton.layer.cornerRadius = 8
        
        StopButton.layer.borderColor = UIColor.black.cgColor
        RestartButton.layer.borderColor = UIColor.black.cgColor
        RulesButton.layer.borderColor = UIColor.black.cgColor*/
        
        // using the collection of array i can add corner radius to the array buttons
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
        
        StopButton.setTitle("STOP", for: .normal)
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImages) , userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImages() {
        CardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
        
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func restartButtonTapped(_ sender: Any) {
        timer.invalidate()
        startTimer()
    }
    
}


