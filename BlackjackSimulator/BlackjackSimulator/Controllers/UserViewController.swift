//
//  UserViewController.swift
//  BlackjackSimulator
//
//  Created by Katherine Li on 1/16/19.
//  Copyright © 2019 Katherine Li. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var thirdCardImageView: UIImageView!
    @IBOutlet weak var forthCardImageView: UIImageView!
    @IBOutlet weak var fifthCardImageView: UIImageView!
    @IBOutlet weak var sixthCardImageView: UIImageView!
    @IBOutlet weak var seventhCardImageView: UIImageView!
    @IBOutlet weak var eighthCardImageView: UIImageView!
    @IBOutlet weak var ninthCardImageView: UIImageView!
    @IBOutlet weak var tenthCardImageView: UIImageView!
    @IBOutlet weak var eleventhCardImageView: UIImageView!
    @IBOutlet weak var calculatorLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func hitButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func stayButtonClicked(_ sender: UIButton) {
    }
    

}
