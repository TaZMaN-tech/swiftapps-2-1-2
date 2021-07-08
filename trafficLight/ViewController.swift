//
//  ViewController.swift
//  trafficLight
//
//  Created by Тадевос Курдоглян on 07.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var stateTrafficLight = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()
        red.alpha = 0.3
        yellow.alpha = 0.3
        green.alpha = 0.3
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        red.layer.cornerRadius = red.frame.size.height/2
        yellow.layer.cornerRadius = yellow.frame.size.height/2
        green.layer.cornerRadius = green.frame.size.height/2
    }
    
    @IBAction func startButtonTapped(_ sender: Any) {
        startButton.setTitle("next", for: .normal)
        stateTrafficLight += 1
        if stateTrafficLight > 3 {
            stateTrafficLight = 1
        }
        red.alpha = stateTrafficLight == 1 ? 1.0 : 0.3
        yellow.alpha = stateTrafficLight == 2 ? 1.0 : 0.3
        green.alpha = stateTrafficLight == 3 ? 1.0 : 0.3
        
    }
}

