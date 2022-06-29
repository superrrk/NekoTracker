//
//  homeScreenViewController.swift
//  NekoTracker
//
//  Created by Scholar on 6/28/22.
//

import UIKit

class homeScreenViewController: UIViewController {
    
    // ---------- labels --------------------------
    @IBOutlet weak var imageViewCharacter: UIImageView!
    @IBOutlet weak var logoNamePlaceholder: UILabel!
    
    @IBOutlet weak var messagePlaceholder: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // ------------- buttons -----------------------
    @IBAction func buttonTappedFood(_ sender: Any) {
    }
    @IBAction func buttonTappedSleep(_ sender: Any) {
    }
    @IBAction func buttonTappedMenstrual(_ sender: Any) {
    }
    @IBAction func buttonTappedWater(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
