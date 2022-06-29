//
//  FoodTrackerViewController.swift
//  NekoTracker
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class FoodTrackerViewController: UIViewController {

    @IBOutlet weak var vegLabelCount: UILabel!
    
    var vegCount = 0
    
    @IBOutlet weak var fruitLabelCount: UILabel!
    
    var fruitCount = 0
    
    @IBOutlet weak var grainLabelCount: UILabel!
    
    var grainCount = 0
    
    @IBOutlet weak var dairyLabelCount: UILabel!
    
    var dairyCount = 0
    
    @IBOutlet weak var proteinLabelCount: UILabel!
    
    var proteinCount = 0
    
    @IBOutlet weak var totalServingsLabel: UILabel!
    
    var totalservingsCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func vegButtonTapped(_ sender: UIButton) {
        vegCount = vegCount+1
        vegLabelCount.text = "Vegetable Servings: \(vegCount)"
    }
    
    @IBAction func fruitButtonTapped(_ sender: UIButton) {
        fruitCount = fruitCount+1
        fruitLabelCount.text = "Fruit Servings: \(fruitCount)"
    }
    
    @IBAction func GrainButtonTapped(_ sender: UIButton) {
        grainCount = grainCount+1
        grainLabelCount.text = "Grain Servings: \(grainCount)"
    }
    
    @IBAction func dairyButtonTapped(_ sender: UIButton) {
        dairyCount = dairyCount+1
        dairyLabelCount.text = "Dairy Servings: \(dairyCount)"
    }
    @IBAction func proteinButtonTapped(_ sender: UIButton) {
        proteinCount = proteinCount+1
        proteinLabelCount.text = "Protein Servings: \(proteinCount)"
    }
    @IBAction func totalButtonTapped(_ sender: UIButton) {
        totalservingsCount = totalservingsCount+grainCount+proteinCount+dairyCount+vegCount+fruitCount
        totalServingsLabel.text = "Total Servings: \(totalservingsCount)"
    }
}
