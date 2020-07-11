//
//  ViewController.swift
//  WOOT
//
//  Created by Ryo on 2020/06/06.
//  Copyright © 2020 Ryo. All rights reserved.
//

import UIKit

class genraViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var minutePicker: UIPickerView!
    
    var genraLabel = ""
    var timeGenra = ""
    var rowSelected = 0
    var pickerData: [String] = [String]()
    
    @IBOutlet weak var labelfornow: UILabel!
    @IBOutlet weak var lookBack: UILabel!
    @IBAction func gotoArtical(_ sender: Any) {
        print("1")
        switch (rowSelected) {
        case 0: self.genraLabel = String("News")
            self.performSegue(withIdentifier: "gotoArtical", sender: self)
        break;
        case 1: self.genraLabel = String("Politics")
            self.performSegue(withIdentifier: "gotoArtical", sender: self)
        break;
        case 2: self.genraLabel = String("History")
            self.performSegue(withIdentifier: "gotoArtical", sender: self)
        break;
        case 3: self.genraLabel = String("Science")
            self.performSegue(withIdentifier: "gotoArtical", sender: self)
        break;
        case 4: self.genraLabel = String("IDK")
            self.performSegue(withIdentifier: "gotoArtical", sender: self)
        break;
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! oneMinuteArticalViewController
        vc.plusGenra = self.genraLabel
        vc.plusTime = self.timeGenra
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
           
           self.minutePicker.delegate = self
           self.minutePicker.dataSource = self
        lookBack.text = timeGenra
           
           pickerData = ["News", "Politics", "History", "Science", "IDK"]
           
       }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelfornow.text = pickerData[row]
        rowSelected = row

        
    }

        
    }
    




