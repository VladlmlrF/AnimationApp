//
//  ViewController.swift
//  AnimationApp
//
//  Created by Владимир Фалин on 05.08.2022.
//

import UIKit
import SpringAnimation

class MainViewController: UIViewController {

    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var presetValueLabel: UILabel!
    @IBOutlet weak var curveValueLabel: UILabel!
    @IBOutlet weak var forceValueLabel: UILabel!
    @IBOutlet weak var durationValueLabel: UILabel!
    @IBOutlet weak var delayValueLabel: UILabel!
    @IBOutlet weak var springButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func springButtonPressed() {
    }
}

