//
//  ViewController.swift
//  kadai1
//
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!

    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        //  キーボードを数字のみにする
        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
        textField3.keyboardType = .numberPad
        textField4.keyboardType = .numberPad
        textField5.keyboardType = .numberPad
    }

    @IBAction func pressButton(_ sender: Any) {
        //  入力
        let number1 = Int(textField1.text ?? "") ?? 0
        let number2 = Int(textField2.text ?? "") ?? 0
        let number3 = Int(textField3.text ?? "") ?? 0
        let number4 = Int(textField4.text ?? "") ?? 0
        let number5 = Int(textField5.text ?? "") ?? 0

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
