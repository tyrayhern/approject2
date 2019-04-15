//
//  YogaViewController.swift
//  project2
//
//  Created by Hernandez, Tyler R on 4/8/19.
//  Copyright © 2019 Hernandez, Tyler R. All rights reserved.
//

import UIKit

class YogaViewController: UIViewController {

    @IBOutlet weak var yogaSwitch: UISwitch!
    
    @IBAction func yogaSwitch(_ sender: Any) {
        checkSwitch()
    }
    func checkSwitch (){
        if yogaSwitch.isOn{
            global.yoga = "Yoga"
        }
        else {
            global.yoga = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
