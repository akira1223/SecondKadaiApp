//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 小島 彬 on 2018/05/20.
//  Copyright © 2018年 小島 彬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - アウトレット
    @IBOutlet weak var nameText: UITextField!
    
    // MARK: - ライフサイクル
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool
    {
        var result:Bool = false
        if (self.nameText.text?.isEmpty == false)
        {
            // 名前の背景色をクリアする
            self.nameText.backgroundColor = UIColor.clear
            
            // 画面遷移する
            result = true
        }
        else
        {
            // 名前が未入力の場合アラートを表示する
            let title = "入力チェック"
            let message = "名前を入力してくだい"
            let OKText = "確認"
            
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
            let okayButton = UIAlertAction(title: OKText, style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(okayButton)
            
            present(alert, animated: true, completion: nil)
            
            // 名前の背景色赤くする
            self.nameText.backgroundColor = UIColor.red
            
            // 画面遷移しない
            result = false
        }
        
        return result
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        resultViewController.name = self.nameText.text!
    }
    
    // MARK: - アクション
    @IBAction func unwind(_ sefue: UIStoryboardSegue)
    {
    }
    
    // MARK: - privateMethod
    
    // MARK: -
}

