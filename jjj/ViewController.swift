//
//  ViewController.swift
//  jjj
//
//  Created by jeanwei on 2019/12/29.
//  Copyright © 2019 jeanwei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //服務費
    @IBOutlet weak var tep: UITextField!
    //金額
    @IBOutlet weak var money: UITextField!
    //總計
    @IBOutlet weak var totalLabel: UILabel!
    //分擔的人數
    @IBOutlet weak var sharepeople: UITextField!
    //分擔
    @IBOutlet weak var shareLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //計算按鈕
    @IBAction func coo(_ sender: UIButton) {
        //將金額 服務費轉成 ＤＯＵＢＬＥ，去計算 服務費
        let tepmu = Double(money.text!)! * Double(tep.text!)! / 100
        //將 總計算出
        let total = Double(money.text!)! + tepmu
        //顯示總計 一人分擔多少
        totalLabel.text = String(total)
        shareLabel.text = String(total / Double(sharepeople.text!)!)
    }
    //點選空白處鍵盤收起
       override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
              self.view.endEditing(true)
          }
}

