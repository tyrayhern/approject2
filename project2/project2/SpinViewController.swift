//
//  SpinViewController.swift
//  project2
//
//  Created by Hernandez, Tyler R on 4/8/19.
//  Copyright © 2019 Hernandez, Tyler R. All rights reserved.
//

import UIKit

class SpinViewController: UIViewController {
    
    @IBOutlet weak var spinSwitch: UISwitch!
    
    @IBAction func spinSwitch(_ sender: Any) {
        checkSwitch()
    }
    
    func checkSwitch (){
        if spinSwitch.isOn{
            global.Spin = "Spin"
        }
        else {
            global.Spin = ""
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
