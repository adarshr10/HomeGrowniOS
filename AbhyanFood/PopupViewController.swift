//
//  PopupViewController.swift
//  AbhyanFood
//
//  Created by Adarsh Rao on 11/11/18.
//  Copyright © 2018 Brendon Ho. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var poWiesel: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        poWiesel.layer.cornerRadius = 15
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
