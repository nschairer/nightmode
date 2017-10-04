//
//  ViewController.swift
//  NightMode
//
//  Created by Noah Schairer on 10/3/17.
//  Copyright © 2017 nschairer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    
    var viewColor = #colorLiteral(red: 0.2986392477, green: 0.8861570894, blue: 1, alpha: 1)
    var colorNumber: Int!
    
    @IBOutlet weak var mySwitch: UISwitch!
    override func viewDidLoad() {
        checkfornightmode()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func switchClicked(_ sender: Any) {
        if mySwitch.isOn == true {
            viewColor = #colorLiteral(red: 0.2986392477, green: 0.8861570894, blue: 1, alpha: 1)
            myView.backgroundColor = viewColor
            colorNumber = 1
            UserDefaults.standard.set(colorNumber, forKey: "mode")
        } else {
            viewColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            myView.backgroundColor = viewColor
            colorNumber = 2
            UserDefaults.standard.set(colorNumber, forKey: "mode")
        }
        
        
    }
    
    func checkfornightmode() {
        if UserDefaults.standard.integer(forKey: "mode") == 1 {
            viewColor = #colorLiteral(red: 0.2986392477, green: 0.8861570894, blue: 1, alpha: 1)
            myView.backgroundColor = viewColor
            mySwitch.isOn = true
        } else {
            viewColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            myView.backgroundColor = viewColor
            mySwitch.isOn = false
        }
    }

}

