//
//  SettingsViewController.swift
//  Tip
//
//  Created by Thalia Villalobos on 1/24/18.
//  Copyright © 2018 Thalia Villalobos. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTip: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let defaults = UserDefaults.standard
        
        defaultTip.selectedSegmentIndex = defaults.integer(forKey: "newDefault")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func defaultPercentage(_ sender: AnyObject) {
        
        let defaults = UserDefaults.standard
        
        defaults.set(defaultTip.selectedSegmentIndex, forKey: "newDefault")
        
        defaults.synchronize()
    }
    
    
}
