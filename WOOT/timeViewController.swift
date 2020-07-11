//
//  timeViewController.swift
//  WOOT
//
//  Created by Ryo on 2020/06/20.
//  Copyright © 2020 Ryo. All rights reserved.
//

import UIKit

class timeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet var timePicker: UIPickerView!
    var timeData = ""
    var timerowSelected = 0
    var pickertimeData: [String] = [String]()
    @IBOutlet weak var labelfornow: UILabel!
    @IBOutlet var gotoNext: UIButton!

    @IBAction func gotoNext(_ sender: Any) {
        switch (timerowSelected) {
        case 0:
        self.timeData = String("1 Minute")
        self.performSegue(withIdentifier: "gotoGenra", sender: self)
        break;
        case 1:
        self.timeData = String("2 Minute")
        self.performSegue(withIdentifier: "gotoGenra", sender: self)
        break;
        case 2:
        self.timeData = String("3 Minute")
        self.performSegue(withIdentifier: "gotoGenra", sender: self)
        break;
        case 3:
        self.timeData = String("4 Minute")
        self.performSegue(withIdentifier: "gotoGenra", sender: self)
        break;
        case 4:
        self.timeData = String("5 Minute")
        self.performSegue(withIdentifier: "gotoGenra", sender: self)
        break;
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! genraViewController
        vc.timeGenra = self.timeData
        print("c p")
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
           self.timePicker.delegate = self
           self.timePicker.dataSource = self
           
           pickertimeData = ["1 Minute", "2 Minutes", "3 Minutes", "4 Minutes", "5 Minutes"]
           
       }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickertimeData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return pickertimeData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelfornow.text = pickertimeData[row]
        timerowSelected = row

        
    }

}
