//
//  ViewController.swift
//  AnimationApp
//
//  Created by Владимир Фалин on 05.08.2022.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var presetValueLabel: UILabel!
    @IBOutlet weak var curveValueLabel: UILabel!
    @IBOutlet weak var forceValueLabel: UILabel!
    @IBOutlet weak var durationValueLabel: UILabel!
    @IBOutlet weak var delayValueLabel: UILabel!
    @IBOutlet weak var springButton: SpringButton!
    
    //MARK: - Private properties
    private var counter = 0
    private let animation = Animation()
    
    //MARK: - view life cicle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springButton.setTitle("Run", for: .normal)
        presetValueLabel.text = animation.preset
        curveValueLabel.text = animation.curve
        forceValueLabel.text = String(format: "%.2f", animation.force)
        durationValueLabel.text = String(format: "%.2f", animation.duration)
        delayValueLabel.text = String(format: "%.2f", animation.delay)
    }

    //MARK: - IB Actions
    @IBAction func springButtonPressed() {
        var currentAnimation = ""
        if let buttonTitle = springButton.titleLabel?.text {
            currentAnimation = String(buttonTitle.dropFirst(4))
        }
        
        if counter == 0 {
            springView.animation = presetValueLabel.text ?? "wobble"
            springView.curve = curveValueLabel.text ?? "easeIn"
            
            if let currentForce = Double(forceValueLabel.text ?? "1") {
                springView.force = currentForce
            } else {
                springView.force = 1
            }
            
            
            if let currentDuration = Double(durationValueLabel.text ?? "0.6") {
                springView.duration = currentDuration
            } else {
                springView.duration = 0.6
            }
            
            
            if let currentDelay = Double(delayValueLabel.text ?? "0.2") {
                springView.delay = currentDelay
            } else {
                springView.delay = 0.2
            }
            
            springView.animate()
            springButton.setTitle("Run " + animation.preset, for: .normal)
            counter = 1
        } else {
            springView.animation = currentAnimation
            springView.curve = animation.curve
            springView.force = animation.force
            springView.duration = animation.duration
            springView.delay = animation.delay
            springButton.setTitle("Run " + animation.preset, for: .normal)
            presetValueLabel.text = springView.animation
            curveValueLabel.text = springView.curve
            forceValueLabel.text = String(format: "%.2f", springView.force)
            durationValueLabel.text = String(format: "%.2f", springView.duration)
            delayValueLabel.text = String(format: "%.2f", springView.delay)
            springView.animate()
        }
    }
}

