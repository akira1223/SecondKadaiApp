//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by 小島 彬 on 2018/05/20.
//  Copyright © 2018年 小島 彬. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // MARK: - プロパティ
    var name: String = ""
    
    // MARK: - アウトレット
    /// 結果ラベル
    @IBOutlet weak var resultLabel: UILabel!
    
    // MARK: - ライフサイクル
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if (name.isEmpty == false)
        {
            self.resultLabel.text = "こんにちは、\(name)さん"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: -
}
