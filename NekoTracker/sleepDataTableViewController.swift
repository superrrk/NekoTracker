//
//  sleepDataTableViewController.swift
//  sleep
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class sleepDataTableViewController: UITableViewController
{
    
    var hours : Int = 0
    var sleepLogArray : [SleepLogCD] = []
    
    override func viewDidLoad() {
      super.viewDidLoad()
        //print(sleepLogArray.count)
        
    }
    
    /* func getCoreDataDBPath() {
            let path = FileManager
                .default
                .urls(for: .applicationSupportDirectory, in: .userDomainMask)
                .last?
                .absoluteString
                .replacingOccurrences(of: "file://", with: "")
                .removingPercentEncoding

            print("Core Data DB Path :: \(path ?? "Not found")")
        } */
    
    func createSleep() -> [SleepLog]
    {
      // get the current date and time
      let currentDateTime = Date()

      // initialize the date formatter and set the style
      let formatter = DateFormatter()
      formatter.timeStyle = .none
      formatter.dateStyle = .long

      // get the date time String from the date object
      let currentDate = formatter.string(from: currentDateTime)
        
      let swift = SleepLog()
      swift.hours = "9"
      swift.date = "\(currentDate)"
        
      let dog = SleepLog()
      swift.hours = "9"
      swift.date = "\(currentDate)"

      return [swift, dog]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return sleepLogArray.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let currentSleepLog = sleepLogArray[indexPath.row]
      // get the current date and time
      let currentDateTime = Date()

      // initialize the date formatter and set the style
      let formatter = DateFormatter()
      formatter.timeStyle = .none
      formatter.dateStyle = .long

      // get the date time String from the date object
      let currentDate = formatter.string(from: currentDateTime)
        if let newDate = currentSleepLog.date{
            if let newHours = currentSleepLog.hours{
                cell.textLabel?.text = "\(newDate) - \(newHours)"

            }
        }
        
      return cell
    }

    func getAllSleepLogs() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

           if let coredateSleepLog = try? context.fetch(SleepLogCD.fetchRequest()) as? [SleepLogCD] {
                    
                   sleepLogArray = coredateSleepLog
               
                   tableView.reloadData()
           }
         }
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
      getAllSleepLogs()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let toDo = sleepLogArray[indexPath.row]

      performSegue(withIdentifier: "goToNext", sender: toDo)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let addVC = segue.destination as? SleepViewController {
        addVC.previousVC = self
      }

      /*if let completeVC = segue.destination as? deleteSleepViewController {
          if let log = sender as? sleepLogArray {
          completeVC.selectedToDo = log
          completeVC.previousVC = self
        }
      }*/
    }

}
