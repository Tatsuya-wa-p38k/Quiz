//
//  ViewController.swift
//  Quiz
//
//  Created by spark-06 on 2024/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
//    let quizzes = ["猫は人間を超でっかいネコだと思っている？",//0番
//                   "イヌは食べ物の美味しさを味よりも匂いで判断している？",//1番
//                   "トラのしましま模様は皮膚まで繋がっていない？"]//2番
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//
//        var str = ""//空文字
//        str = self.quizzes[0]
//        self.label.text = str
//
//    }
    
    @IBAction func pressButton(_ sender: Any) {
        
        //Buttonクリックでテキストの変更
        //Buttonのクリックで文字色の変更
        self.label.text = "ボタンを押しました"
        self.label.textColor = UIColor.red
    }
    
}

