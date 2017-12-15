//
//  LeagueVC.swift
//  Swish-Swoosh
//
//  Created by Sain-R Edwards Jr. on 12/14/17.
//  Copyright © 2017 Appybuildmore Apps. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: Storyboard.skillVCSegue, sender: self)
        
    }
    
    // How to pass data between View Controllers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /* prepareForSegue is always called before
         viewDidLoad (on the destination view controller) */
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
       selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    struct Storyboard {
        static let skillVCSegue = "goToSkillVC"
    }
    

}
