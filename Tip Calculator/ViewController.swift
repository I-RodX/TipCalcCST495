//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Isaac on 8/30/18.
//  Copyright © 2018 Isaac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercetages = [0.15, 0.20, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercetages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)//"$\(tip)"
        totalLabel.text = String(format: "$%.2f", total)//"\(total)"
    }
}

