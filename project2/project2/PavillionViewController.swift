//
//  PavillionViewController.swift
//  project2
//
//  Created by Hernandez, Tyler R on 4/8/19.
//  Copyright © 2019 Hernandez, Tyler R. All rights reserved.
//

import UIKit

class PavillionViewController: UIViewController {

    
    @IBOutlet weak var pavillionDescription: UILabel!
    
    
    @IBOutlet weak var pavillionSwitch: UISwitch!
    @IBAction func pavillionSwitch(_ sender: UISwitch) {
        checkSwitch()
    }
    
    func checkSwitch (){
        if pavillionSwitch.isOn{
            global.pavillion = "Pavillion"
        }
        else {
            global.pavillion = ""
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
