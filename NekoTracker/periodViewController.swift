//
//  periodViewController.swift
//  periods
//
//  Created by Scholar on 6/29/22.
//

import UIKit

class periodViewController: UIViewController
{
    @IBOutlet weak var beginningTextField: UITextField!
    @IBOutlet weak var nextPeriodLabel: UILabel!
    @IBOutlet weak var nextOvulation: UILabel!
    
    let datePicker = UIDatePicker()
    let datePicker2 = UIDatePicker()
    
    @IBOutlet weak var endTextField: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        createDatePicker()
        let newPeriodDate = datePicker.date
        datePicker.addTarget(self, action: #selector(datePeriodChanged(_:)), for: .valueChanged)

        let newOvulationDate = datePicker.date
        datePicker.addTarget(self, action: #selector(dateOvulationChanged(_:)), for: .valueChanged)
    }
    
    @objc func datePeriodChanged(_ sender: UIDatePicker) {
        print(sender.date)
        var newDate = sender.date.addingTimeInterval(2419200)
        
        let format = DateFormatter()
        format.dateFormat = "MM/dd/yyyy"
        let newString = format.string(from: newDate)
        nextPeriodLabel.text = newString
    }
    
    @objc func dateOvulationChanged(_ sender: UIDatePicker) {
        print(sender.date)
        var newDate = sender.date.addingTimeInterval(1209600)
        
        let format = DateFormatter()
        format.dateFormat = "MM/dd/yyyy"
        let newString = format.string(from: newDate)
        nextOvulation.text = newString
    }
    
    func createDatePicker()
    {
        // alignment
        beginningTextField.textAlignment = .center
        endTextField.textAlignment = .center
        
        // create toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // bar button done
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: true)
        
        // assign toolbar
        beginningTextField.inputAccessoryView = toolbar
        endTextField.inputAccessoryView = toolbar
        
        // assign date picker to the text field
        beginningTextField.inputView = datePicker
        endTextField.inputView = datePicker2
        
        // date picker mode
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        datePicker2.datePickerMode = .date
        datePicker2.preferredDatePickerStyle = .wheels
    }
    
    @objc func donePressed()
    {
        // formatter
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        
        beginningTextField.text = formatter.string(from:datePicker.date)
        endTextField.text = formatter.string(from:datePicker2.date)
        self.view.endEditing(true)
    }
    
    
    
    
}
