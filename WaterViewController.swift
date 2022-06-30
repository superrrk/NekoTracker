//
//  WaterViewController.swift
//  NekoTracker
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class WaterViewController: UIViewController {

    @IBOutlet weak var totalCupsLabel: UILabel!
    
    var cupsCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func waterButtonTapped(_ sender: Any) {
        cupsCount = cupsCount+1
        totalCupsLabel.text = "Cups: \(cupsCount)"
    }
}
