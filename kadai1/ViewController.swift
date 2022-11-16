//
//  ViewController.swift
//  kadai1
//
//
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

        //  キーボードを数字のみにする
        textFeild1.keyboardType = .numberPad
        textLabel2.keyboardType = .numberPad
        textLabel3.keyboardType = .numberPad
        textLabel4.keyboardType = .numberPad
        textLabel5.keyboardType = .numberPad
    }

    @IBAction func pressButton(_ sender: Any) {
        //  入力
        let number1 = Int(textFeild1.text ?? "") ?? 0
        let number2 = Int(textLabel2.text ?? "") ?? 0
        let number3 = Int(textLabel3.text ?? "") ?? 0
        let number4 = Int(textLabel4.text ?? "") ?? 0
        let number5 = Int(textLabel5.text ?? "") ?? 0

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
