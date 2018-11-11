//
//  FoodCornerViewController.swift
//  AbhyanFood
//
//  Created by Brendon Ho on 11/10/18.
//  Copyright © 2018 Brendon Ho. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

struct Corners{
    let name: String
    let weightedSum: Double
    //let image: String
    
}

class FoodCornerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arr = [[String:AnyObject]]()
    
    var globalURL: String = "http://crispycream.herokuapp.com/getPlants"
    
    @IBOutlet weak var info: UIButton!
    @IBOutlet weak var nib: UITableView!
    
    let session = URLSession.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nib.delegate = self
        nib.dataSource = self
        
        nib.estimatedRowHeight = UITableView.automaticDimension
        nib.rowHeight = UITableView.automaticDimension
        
        info.layer.borderWidth = 2
        //info.layer.borderColor = UIColor(red:0.00, green:1.00, blue:0.57, alpha:1.0) as? CGColor
        info.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
        alamoParse()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = nib.dequeueReusableCell(withIdentifier: "cornerCell") as! CornerViewCell
        
        var dict = arr[indexPath.row]
        
        cell.label.text = dict["name"] as? String
        cell.imageV.image = UIImage(named: "asian")
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func alamoParse(){
        
        Alamofire.request(globalURL, method: .post, encoding: JSONEncoding.default)
            .responseJSON { response in
                print(response)
                //to get status code
                if let status = response.response?.statusCode {
                    switch(status){
                    case 201:
                        print("example success")
                    default:
                        print("error with response status: \(status)")
                    }
                }
                //to get JSON return value
                if((response.result.value) != nil) {
                    let jsonVar = JSON(response.result.value!)
                    
                    if let resData = jsonVar["orderedPlants"].arrayObject{
                        self.arr = resData as! [[String: AnyObject]]
                    }
                    
                    if self.arr.count > 0 {
                        self.nib.reloadData()
                    }
                    print(jsonVar)
                }
                
        }
        
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
