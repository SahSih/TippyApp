//
//  ViewController.swift
//  Tippy
//
//  Created by Chris Peng on 11/20/17.
//  Copyright © 2017 Chris Peng. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    var tipDataBill: [NSManagedObject] = []
//    @NSManaged public var billInput: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.title = "Tip Calculator"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {
//        guard let appDelegate =
//            UIApplication.shared.delegate as? AppDelegate else {
//                return
//        }
//
//        let managedContext = appDelegate.persistentContainer.viewContext
//        let entity = NSEntityDescription.entity(forEntityName: "TipInput", in: managedContext)!
//        let billInput = NSManagedObject(entity: entity, insertInto: managedContext)
//        billInput.setValue(billField.text, forKeyPath: "bill")
//
//        do {
//            try managedContext.save()
//            tipDataBill.append(billInput)
//        } catch let error as NSError {
//            print("Could not save. \(error), \(error.userInfo)")
//        }

        let tipPercetages = [0.15, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0


//        let bill = Double(billInput.value(forKeyPath: "bill") as! String) ?? 0

        let tip = bill * tipPercetages[tipControl.selectedSegmentIndex]
        let total = bill + tip

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
//                return
//        }
//        let managedContext = appDelegate.persistentContainer.viewContext
//        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "TipInput")
//        do {
//            tipDataBill = try managedContext.fetch(fetchRequest)
//        } catch let error as NSError {
//            print("Could not fetch. \(error), \(error.userInfo)")
//        }
//
//        let billInput = tipDataBill[0]
//
//        let bill = Double(billInput.value(forKeyPath: "bill") as! String) ?? 0
//        billField.text = bill.description
    }

}

