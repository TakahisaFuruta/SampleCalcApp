//
//  ViewController.swift
//  SimpleCalcApp
//
//  Created by 古田貴久 on 2017/10/07.
//  Copyright © 2017年 TakahisaFuruta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var priceField: UITextField!
  
  @IBAction func tapBtn0(_ sender: Any) {
    setValueToField(value: "0")
  }
  
  @IBAction func tapBtn1(_ sender: Any) {
    setValueToField(value: "1")
  }
  
  @IBAction func tapBtn2(_ sender: Any) {
    setValueToField(value: "2")
  }
  
  @IBAction func tapBtn3(_ sender: Any) {
    setValueToField(value: "3")
  }
  
  @IBAction func tapBtn4(_ sender: Any) {
    setValueToField(value: "4")
  }
  
  @IBAction func tapBtn5(_ sender: Any) {
    setValueToField(value: "5")
  }
  
  @IBAction func tapBtn6(_ sender: Any) {
    setValueToField(value: "6")
  }
  
  @IBAction func tapBtn7(_ sender: Any) {
    setValueToField(value: "7")
  }
  
  @IBAction func tapBtn8(_ sender: Any) {
    setValueToField(value: "8")
  }
  
  @IBAction func tapBtn9(_ sender: Any) {
    setValueToField(value: "9")
  }
  
  @IBAction func tabBtn00(_ sender: Any) {
    setValueToField(value: "00")
  }
  
  
  @IBAction func tapClearBtn(_ sender: Any) {
    priceField.text = "0"
  }
  
  @IBAction func restart(_ sender: UIStoryboardSegue) {
    priceField.text = "0"
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // 画面遷移時の処理
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // 次の画面
    // 親クラスがくるので as! でダウンキャスト(親=>子)する
    let nextController = segue.destination as! PercentViewController
    if let price = Int(priceField.text!) {
      nextController.price = price
    }
  }
  
  // 渡したstringの数字をint変換してフィールドセット
  func setValueToField(value :String) {
    let value = priceField.text! + value // 追加の場合はアンラップ必要
    if let price = Int(value) {
      priceField.text = "\(price)"
    }
  }
  
  
  
}

