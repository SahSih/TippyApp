//
//  SettingViewController.swift
//  Tippy
//
//  Created by Chris Peng on 11/27/17.
//  Copyright © 2017 Chris Peng. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    weak var delegate: DataEnteredDelegate? = nil
    @IBOutlet weak var tip1: UITextField!
    @IBOutlet weak var tip2: UITextField!
    @IBOutlet weak var tip3: UITextField!
    lazy var tipChange: [Double] = [0, 0, 0]
    var tipChanged: Bool? = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func SaveTipChange(_ sender: Any) {
        print("save")

        if tip1.text == "" || tip2.text == "" || tip3.text == "" {
            return
        } else {
            tipChange[0] = Double(tip1.text!)!
            tipChange[1] = Double(tip2.text!)!
            tipChange[2] = Double(tip3.text!)!
            tipChanged = true
            delegate?.userDidEnterTip(info: tipChange)
            self.navigationController?.popViewController(animated: true)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

protocol DataEnteredDelegate: class {
    func userDidEnterTip(info: [Double])
}
