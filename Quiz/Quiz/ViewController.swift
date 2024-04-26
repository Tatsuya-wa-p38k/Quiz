//
//  ViewController.swift
//  Quiz
//
//  Created by spark-06 on 2024/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // テキストの変更
        self.label.text = "Hello"
        
    }
    
    @IBAction func pressButton(_ sender: Any) {
        
        //Buttonクリックでテキストの変更
        self.label.text = "ボタンを押しました"
        self.label.textColor = UIColor.red
    }
    
}
