//
//  LeagueVVC.swift
//  swoosh
//
//  Created by Noman Hussain on 22/01/2018.
//  Copyright © 2018 Noman Hussain. All rights reserved.
//

import UIKit

class LeagueVVC: UIViewController {
    var player :Player!
    override func viewDidLoad() {
        super.viewDidLoad()

            player = Player()
    }

    @IBOutlet weak var nextBtn: borderClass!
    

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueSelected: "men")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueSelected: "women")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueSelected: "coed")
    }
    func selectLeague(leagueSelected : String) {
        player.desiredLeague = leagueSelected
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
