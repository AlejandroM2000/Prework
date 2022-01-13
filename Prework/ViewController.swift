//
//  ViewController.swift
//  Prework
//
//  Created by Alejandro Malanche on 12/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stepperLabel: UILabel!
    
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var sliderLabel: UILabel!
    

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        let currValue = Int(sender.value)
        stepperLabel.text = "\(currValue)"
        //stepperLabel.text = Int(sender.value).description
     }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        sliderLabel.text = "\(currentValue)" + "%"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.billAmountTextField.becomeFirstResponder()
        stepper.wraps = true
        stepper.autorepeat = true
        stepper.maximumValue = 10
        
        // Do any additional setup after loading the view.
    }
    


    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = Double(slider.value)/100.0
        let tip  = bill * tipPercentage
        let stepperVal = Double(stepperLabel.text!) ?? 0.0
       let total = (bill + tip)/stepperVal
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

