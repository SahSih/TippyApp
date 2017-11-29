//
//  ViewController.swift
//  Tippy
//
//  Created by Chris Peng on 11/20/17.
//  Copyright © 2017 Chris Peng. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, DataEnteredDelegate {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    var tipPercentages: [Double] = [0.15, 0.2, 0.25]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.title = "Tip Calculator"

        tipControl.setTitle("\(tipPercentages[0] * 100)%", forSegmentAt: 0)
        tipControl.setTitle("\(tipPercentages[1] * 100)%", forSegmentAt: 1)
        tipControl.setTitle("\(tipPercentages[2] * 100)%", forSegmentAt: 2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let settingViewController = segue.destination as! SettingViewController
            settingViewController.delegate = self
        }
    }

    func userDidEnterTip (info: [Double]) {
        tipControl.setTitle("\(info[0])%", forSegmentAt: 0)
        tipControl.setTitle("\(info[1])%", forSegmentAt: 1)
        tipControl.setTitle("\(info[2])%", forSegmentAt: 2)
        tipPercentages[0] = info[0] / 100
        tipPercentages[1] = info[1] / 100
        tipPercentages[2] = info[2] / 100
    }

    @IBAction func calculateTip(_ sender: Any) {

        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

