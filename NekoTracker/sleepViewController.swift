//
//  ViewController.swift
//  sleep
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class SleepViewController: UIViewController
{
    var previousVC = sleepDataTableViewController()

    @IBOutlet weak var todayDateLabel: UILabel!
    var numberOfClicks = 0
    
    @IBOutlet weak var sleep1: UIImageView!
    @IBOutlet weak var sleep2: UIImageView!
    @IBOutlet weak var sleep3: UIImageView!
    @IBOutlet weak var sleep4: UIImageView!
    @IBOutlet weak var sleep5: UIImageView!
    @IBOutlet weak var sleep6: UIImageView!
    @IBOutlet weak var sleep7: UIImageView!
    @IBOutlet weak var sleep8: UIImageView!
    @IBOutlet weak var sleep9: UIImageView!
    @IBOutlet weak var sleep10: UIImageView!
    @IBOutlet weak var sleep11: UIImageView!
    @IBOutlet weak var sleep12: UIImageView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let formatter : DateFormatter = DateFormatter()
            formatter.dateFormat = "MM/dd/yyyy"
            let dateToday : String = formatter.string(from:   NSDate.init(timeIntervalSinceNow: 0) as Date)
        todayDateLabel.text = "Today's Date: \(dateToday)"
    }
    
    @IBAction func sleepButton(_ sender: Any)
    {
        numberOfClicks = numberOfClicks + 1
        
        if numberOfClicks == 1
        {
            sleep1.image = UIImage(named:"moon")
        }
        if numberOfClicks == 2
        {
            sleep2.image = UIImage(named:"moon")
        }
        if numberOfClicks == 3
        {
            sleep3.image = UIImage(named:"moon")
        }
        if numberOfClicks == 4
        {
            sleep4.image = UIImage(named:"moon")
        }
        if numberOfClicks == 5
        {
            sleep5.image = UIImage(named:"moon")
        }
        if numberOfClicks == 6
        {
            sleep6.image = UIImage(named:"moon")
        }
        if numberOfClicks == 7
        {
            sleep7.image = UIImage(named:"moon")
        }
        if numberOfClicks == 8
        {
            sleep8.image = UIImage(named:"moon")
        }
        if numberOfClicks == 9
        {
            sleep9.image = UIImage(named:"moon")
        }
        if numberOfClicks == 10
        {
            sleep10.image = UIImage(named:"moon")
        }
        if numberOfClicks == 11
        {
            sleep11.image = UIImage(named:"moon")
        }
        if numberOfClicks == 12
        {
            sleep12.image = UIImage(named:"moon")
        }
        
    }
    
    @IBAction func addSleepButton(_ sender: Any)
    {
        performSegue(withIdentifier: "goToNext", sender: self)
        
        // we have to grab this view context to be able to work with Core Data
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

        let oneSleepLog = SleepLogCD(entity: SleepLogCD.entity(), insertInto: context)

            let formatter : DateFormatter = DateFormatter()
                formatter.dateFormat = "MM/dd/yyyy"
                let dateToday : String = formatter.string(from:   NSDate.init(timeIntervalSinceNow: 0) as Date)
        oneSleepLog.date = dateToday
        oneSleepLog.hours = "\(numberOfClicks)"
            
        //date and hours (like name and important)
        try? context.save()

        navigationController?.popViewController(animated: true)
        
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "goToNext"
        {
            let destinationVC = segue.destination as? sleepDataTableViewController
           // if let hours = numberOfClicks {
            print("clicks ->\(numberOfClicks)")
            destinationVC?.hours = numberOfClicks
                //}
        }
    }
    
    
}

