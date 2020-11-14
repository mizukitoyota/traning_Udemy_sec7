//
//  ViewController.swift
//  Ketboard1
//
//  Created by Training on 2020/11/14.
//  Copyright © 2020 training. All rights reserved.
//デリゲート、プロトコル　キーボードとじ
//デリゲート-Apple提供の仕様書あり、デザインパターン他のクラスに処理してもらう,処理の移譲
//プロトコル-設計図クラスの挙動を決めたもの、仕様書
//モデル-データ処理、データを扱う
//view-UIに関わる処理をする層
//control-modelとViewの値渡し

import UIKit
//キーボード閉じたい時に使うメソッド入り、UITextFieldDelegateはUITextFieldが持つDelegateメソッドを呼ベル、
class ViewController: UIViewController,UITextFieldDelegate {
//パーツの名前、securetextEntry　パスワード文字かくし
    @IBOutlet weak var logoimageview: UIImageView!
    
    @IBOutlet weak var userNameTextFiled: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBOutlet weak var usernNameLabel: UILabel!
    @IBOutlet weak var passWordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    //UITextFieldDelegateを使用するための設定、
        userNameTextFiled.delegate = self
        passWordTextField.delegate = self
    }
//アクション名
    @IBAction func login(_ sender: Any) {
        
        logoimageview.image = UIImage(named:"loginOK")
        
        usernNameLabel.text = userNameTextFiled.text
        passWordLabel.text = passWordTextField.text
    }
    
    //タッチでキーボード閉じ,タッチすると呼ばれるendEditing編集終了-touchesBegan
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //リターンキーを押した時にキーボードとじる,resignFirstResponder、true帰って閉じる、エンターキー押されるとココ呼ばれる、どこ呼ばれたか_ textFieldに入る、resignFirstResponder-
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
}

