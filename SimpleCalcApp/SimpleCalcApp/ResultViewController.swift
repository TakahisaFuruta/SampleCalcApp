//
//  ResultViewController.swift
//  SimpleCalcApp
//
//  Created by 古田貴久 on 2017/10/07.
//  Copyright © 2017年 TakahisaFuruta. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
  
  var price : Int = 0
  var percentage :Int = 0
  
  @IBOutlet weak var resultField: UITextField!
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let percentValue = Float(percentage) / 100
        let disCountValue = Float(price) * percentValue
        let disCountPrice = price - Int(disCountValue)
        
        resultField.text = "\(disCountPrice)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
