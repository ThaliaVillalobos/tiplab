//
//  SettingsViewController.swift
//  Tip
//
//  Created by Thalia Villalobos on 1/24/18.
//  Copyright © 2018 Thalia Villalobos. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

    @IBAction func percentage(_ sender: AnyObject) {
        
        let defults = UserDefaults.standard
        
        defults.set(0.25, forKey: "new")
        
        defults.synchronize()
    }
}
