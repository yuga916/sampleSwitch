//
//  ViewController.swift
//  sampleSwitch
//
//  Created by 一戸悠河 on 2017/01/18.
//  Copyright © 2017年 一戸悠河. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myswitch: UISwitch!
    
    @IBOutlet weak var mySlider: UISlider!
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var viewLabel: UILabel!
    
    @IBOutlet weak var canselButton: UIButton!
    
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
//画面が起動した時に発動する
    override func viewDidLoad() {
        super.viewDidLoad()
        print("画面起動しました")
        myTextView.text = "Hello"
        myTextView.textColor = UIColor.blueColor()
        myTextView.font = UIFont(name: "AmericanTypewriter",size: 30)
        myTextView.textAlignment = NSTextAlignment.Center
//        myTextViewにHelloを10個表示してください
//        for n in 1...10 {
//            myTextView.text = myTextView.text + "Hello"
//        }

//        myTextViewはこんにちはnで10個表示してください
        var i = 1
        while i <= 10 {
            myTextView.text = myTextView.text + "こんにちは\(i)"
            i = i + 1
        }
        
    }

//スイッチが切り替わったかどうかの判定
    @IBAction func changeSwitch(sender: UISwitch) {
//        print("切り替わったよ")
//          print(sender.on)
        
        if sender.on {
            print("スイッチON")
        } else {
            print("スイッチOFF")
        }
    }
    
//slider、どの位置にあるかの確認
    @IBAction func sliderChange(sender: UISlider) {
        print(sender.value)
        
        if sender.value >= 0.5 {
            print("音が大きいです")
        } else {
            print("音が小さいです")
        }
    }
    
    
//キーボードの中のreturnkeyが押された時
//    @IBAction func tapReturn(sender: UITextField) {
//        print(sender.text)
        
//        let str:String! = sender.text
//        if str.containsString("test") {
//            viewLabel.text = "testです"
//        } else {
//            viewLabel.text = sender.text
//        }
//    
//    }
    
//画面上のキャンセルボタンが押された時に発動
//    @IBAction func tapCansel(sender: UIButton) {
//        キーボードを閉じる
//        myTextField.resignFirstResponder()
//    }
//    
//    @IBAction func tapClose(sender: UIButton) {
//        myTextView.resignFirstResponder()
//    }
    
// 選択された日付が変わった時
    @IBAction func dateChange(sender: UIDatePicker) {
//        print(sender.date)
        let df = NSDateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        print(df.stringFromDate(sender.date))
    }
    
        
//使用しているデバイスでメモリ不足を感知した時に発動
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

