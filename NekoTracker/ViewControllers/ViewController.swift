//
//  ViewController.swift
//  NekoTracker
//
//  Created by Scholar on 6/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var petNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNext" {
            let destinationVC = segue.destination as? homeScreenViewController
            if let name = nameTextField.text {
                destinationVC?.name = name
                }
            if let petName = petNameTextField.text {
                destinationVC?.petName  = petName
            }
            }
        }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
       
        performSegue(withIdentifier: "goToNext", sender: self)
    }
}
