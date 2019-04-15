//
//  ViewController.swift
//  project2
//
//  Created by Hernandez, Tyler R on 4/3/19.
//  Copyright © 2019 Hernandez, Tyler R. All rights reserved.
//

//Concept: Main sends to vcs, vcs have info on laptops, switch values return to main to create list of selected vcs, main has text field to enter name so output: Name's computers: vcs whre switch = on;

import UIKit

class Global {
    var pickerVar = String()
    var mac = String()
    var flipBook = String()
    var pavillion = String()
    var yoga = String()
    var Spin = String()
}

let global = Global()

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
        let items = ["FlipBook", "Spin", "Yoga", "Pavillion", "Mac"]
    
    var selection:String!
    var name:String?
    var list:String?
    
    
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var yourChoice: UILabel!
    @IBOutlet weak var yourName: UILabel!
    
    
    
    @IBAction func seePicks(_ sender: Any) {
        yourPicks()
    }
    
    @IBAction func submitAction(_ sender: Any) {
        yourName.text = enterName.text
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return items.count


    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
            return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selection = items[row]
        
        global.pickerVar = selection
    }
    
    func yourPicks(){
        yourChoice.text = ("\(global.flipBook)  \(global.mac)  \(global.pavillion)  \(global.Spin) \(global.yoga)")
        
        
    }
    

    
    @IBAction func viewButton(_ sender: UIButton) {
        if selection == "Mac"{
            performSegue(withIdentifier: "MacSegue", sender: self)
        }
        else if selection == "FlipBook"{
            performSegue(withIdentifier: "FlipBookSegue", sender: self)
        }
        
        else if selection == "Yoga"{
            performSegue(withIdentifier: "YogaSegue", sender: self)
        }
        else if selection == "Pavillion"{
            performSegue(withIdentifier: "PavillionSegue", sender: self)
        }
        else if selection == "Spin"{
            performSegue(withIdentifier: "SpinSegue", sender: self)
        }
        
        
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        picker.delegate = self
        picker.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

