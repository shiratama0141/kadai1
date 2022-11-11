//
//  ViewController.swift
//  kadai1
//
//  Created by 小崎友紀 on 2022/11/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFeild1: UITextField!
    @IBOutlet weak var textLabel2: UITextField!
    @IBOutlet weak var textLabel3: UITextField!
    @IBOutlet weak var textLabel4: UITextField!
    @IBOutlet weak var textLabel5: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//  キーボードを数字のみにする
        textFeild1.keyboardType = .numberPad
        textLabel2.keyboardType = .numberPad
        textLabel3.keyboardType = .numberPad
        textLabel4.keyboardType = .numberPad
        textLabel5.keyboardType = .numberPad
    }

    @IBAction func pressButton(_ sender: Any) {
//  入力
        let number1 = (textFeild1.text! as NSString).integerValue
        let number2 = (textLabel2.text! as NSString).integerValue
        let number3 = (textLabel3.text! as NSString).integerValue
        let number4 = (textLabel4.text! as NSString).integerValue
        let number5 = (textLabel5.text! as NSString).integerValue
        
//  処理
        let result = number1 + number2 + number3 + number4 + number5
        
//  出力
        resultLabel.text = "\(result)"
    }
    
//  ラベルとボタン以外の画面をタップするとキーボードが閉じる
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
}

