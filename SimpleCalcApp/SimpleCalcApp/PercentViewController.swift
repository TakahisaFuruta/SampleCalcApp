//
//  PercentViewController.swift
//  SimpleCalcApp
//
//  Created by 古田貴久 on 2017/10/07.
//  Copyright © 2017年 TakahisaFuruta. All rights reserved.
//

import UIKit

class PercentViewController: UIViewController {
  
  var price :Int = 0
  
  @IBOutlet weak var percentageLabel: UITextField!
  
  @IBAction func tabBtn(_ sender: UIButton) {
    setValueToLable(value: String(sender.tag))
  }
  
  @IBAction func tapClearBtn(_ sender: Any) {
    percentageLabel.text = "0"
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    percentageLabel.text = "0"
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let nextController = segue.destination as! ResultViewController
    nextController.price = price
    
    if let percentage = Int(percentageLabel.text!) {
      nextController.percentage = percentage
    }
  }
  
  
  func setValueToLable(value : String) {
    let text = percentageLabel.text! + value
    if let text = Int(text) {
      percentageLabel.text = "\(text)"
    }
  }
}
