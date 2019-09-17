//
//  ViewController.swift
//  SecondProject
//
//  Created by Russell Mirabelli on 9/12/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var brownButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var responseLabel: UILabel!
    
    var user = User(name: nil, favoriteColor: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func greenButtonTapped(_ sender: Any) {
        user.favoriteColor = .green
        updateResponseLabel()
    }
    
    @IBAction func blueButtonTapped(_ sender: Any) {
        user.favoriteColor = .blue
        updateResponseLabel()
    }
    @IBAction func brownButtonTapped(_ sender: Any) {
        user.favoriteColor = .brown
        updateResponseLabel()
    }
    
    @IBAction func orangeButtonTapped(_ sender: Any) {
        user.favoriteColor = .orange
        updateResponseLabel()
    }
    
    func updateResponseLabel() {
        if let color = user.favoriteColor?.displayColor() {
            responseLabel.textColor = color
        }
    }
    
}

