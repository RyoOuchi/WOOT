//
//  oneMinuteArticalViewController.swift
//  WOOT
//
//  Created by Ryo on 2020/06/14.
//  Copyright © 2020 Ryo. All rights reserved.
//

import UIKit

class oneMinuteArticalViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    var plusGenra = ""
    var plusTime = ""
    var articalData: [String] = [String]()
    var articalrowSelected = 0
    
    @IBOutlet weak var allArtical: UITableView!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var genra: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        time.text = plusTime
        genra.text = plusGenra
        allArtical.dataSource = self
        allArtical.delegate = self
        
        if plusGenra == String("News"), plusTime == String("1 Minute") {
            articalData = ["", "", "", "", ""]
            
        }
        if plusGenra == String("News"), plusTime == String("2 Minutes") {
            articalData = ["", "", "", "", ""]
            
        }
        if plusGenra == String("News"), plusTime == String("3 Minutes") {
            articalData = ["", "", "", "", ""]
            
        }
        if plusGenra == String("News"), plusTime == String("4 Minutes") {
            articalData = ["", "", "", "", ""]
            
        }
        if plusGenra == String("News"), plusTime == String("5 Minutes") {
            articalData = ["", "", "", "", ""]
            
        }
        if plusGenra == String("Politics"), plusTime == String("1 Minute") {
                    articalData = ["lol", "loo", "loo", "11", "11"]
        //            print("complete")
        //            switch (articalrowSelected) {
        //            case 0:
        //                self.articalData = [String("lol")]
        //                print("completr2")
        //                self.performSegue(withIdentifier: "yay", sender: self)
        //                print("completr4")
        //                break;
        //            case 1:
        //                self.articalData = [String("loo")]
        //                self.performSegue(withIdentifier: "yay", sender: self)
        //                break;
        //            case 2:
        //                self.articalData = [String("loo")]
        //                self.performSegue(withIdentifier: "yay", sender: self)
        //                break;
        //            case 3:
        //                self.articalData = [String("11")]
        //                self.performSegue(withIdentifier: "yay", sender: self)
        //                break;
        //            case 4:
        //                self.articalData = [String("11")]
        //                self.performSegue(withIdentifier: "yay", sender: self)
        //                break;
        //            default:
        //                break
        //            }
                }
                if plusGenra == String("Politics"), plusTime == String("2 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("Politics"), plusTime == String("3 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("Politics"), plusTime == String("4 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("Politics"), plusTime == String("5 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                //PoliticsGenra
                
                //HistoryGenra
                if plusGenra == String("History"), plusTime == String("1 Minute") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("History"), plusTime == String("2 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("History"), plusTime == String("3 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("History"), plusTime == String("4 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("History"), plusTime == String("5 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                //HistoryGenra
                
                //ScienceGenra
                if plusGenra == String("Science"), plusTime == String("1 Minute") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("Science"), plusTime == String("2 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("Science"), plusTime == String("3 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("Science"), plusTime == String("4 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("Science"), plusTime == String("5 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                //ScienceGenra
                
                //IDKGenra
                if plusGenra == String("IDK"), plusTime == String("1 Minute") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("IDK"), plusTime == String("2 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("IDK"), plusTime == String("3 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("IDK"), plusTime == String("4 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
                if plusGenra == String("IDK"), plusTime == String("5 Minutes") {
                    articalData = ["", "", "", "", ""]
                    
                }
    }
    //NewsGenra
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articalData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = articalData[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //allArtical = articalData[row]
        articalrowSelected = indexPath.row
        print(indexPath.row)
    
        //case break
    }
}



