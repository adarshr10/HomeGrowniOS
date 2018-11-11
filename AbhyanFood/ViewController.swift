//
//  ViewController.swift
//  AbhyanFood
//
//  Created by Brendon Ho on 11/10/18.
//  Copyright © 2018 Brendon Ho. All rights reserved.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController{

    @IBOutlet var buttonView: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        buttonView.layer.cornerRadius = 25

    }

    @IBAction func buttonAction(_ sender: Any) {
        
        performSegue(withIdentifier: "doneAnal", sender: nil)
        
    }
    
}

