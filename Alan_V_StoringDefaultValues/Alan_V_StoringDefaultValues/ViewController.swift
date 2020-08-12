//
//  ViewController.swift
//  Alan_V_StoringDefaultValues
//
//  Created by Alan Villegas on 8/10/20.
//  Copyright © 2020 Alan Villegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func mySaveButton(_ sender: Any) {
        UserDefaults.standard.set(myPassword.text, forKey: "Text")
        UserDefaults.standard.set(mySlider.value, forKey: "Slider")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
    }
    
    @IBAction func myLoadButton(_ sender: Any) {
        myPassword.text = UserDefaults.standard.string(forKey: "Text")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
    }
    
    @IBAction func myDeleteButton(_ sender: Any) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        myPassword.text = ""
    }
    
    @IBOutlet var mySlider: UISlider!
    
    @IBOutlet var mySwitch: UISwitch!
    
    @IBOutlet var myPassword: UITextField!
    
    
}

