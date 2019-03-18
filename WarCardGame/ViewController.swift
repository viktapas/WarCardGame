//
//  ViewController.swift
//  WarCardGame
//
//  Created by विकास कुमार on 18/03/2019.
//  Copyright © 2019 विकास कुमार. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var leftImageView: UIImageView!

    @IBOutlet weak var rightImageView: UIImageView!

    @IBOutlet weak var leftScoreLebel: UILabel!

    @IBOutlet weak var rightScoreLebel: UILabel!

    // Scores
    var leftScore = 0
    var rightScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftRandomNumber = Int.random(in: 2...14)
        let rightRandomNumber = Int.random(in: 2...14)

        // Change the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")

        if (leftRandomNumber > rightRandomNumber) {
            // Update the score
            leftScore += leftRandomNumber
            // Update the label
            leftScoreLebel.text = String(leftScore)


        } else if  leftRandomNumber < rightRandomNumber {
            // Update the score
            rightScore += rightRandomNumber
            // Update the label
            rightScoreLebel.text = String(rightScore)

        } else if leftRandomNumber == rightRandomNumber {
            // do something
        }
    }

}
