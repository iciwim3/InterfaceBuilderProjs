//
//  LeagueVC.swift
//  Swish-Swoosh
//
//  Created by Sain-R Edwards Jr. on 12/14/17.
//  Copyright © 2017 Appybuildmore Apps. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: Storyboard.skillVCSegue, sender: self)
        
    }
    
    struct Storyboard {
        static let skillVCSegue = "goToSkillVC"
    }
    

}
