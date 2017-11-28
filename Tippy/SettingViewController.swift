//
//  SettingViewController.swift
//  Tippy
//
//  Created by Chris Peng on 11/27/17.
//  Copyright © 2017 Chris Peng. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var tip1: UITextField!
    @IBOutlet weak var tip2: UITextField!
    @IBOutlet weak var tip3: UITextField!

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
