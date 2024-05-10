//
//  ResultViewController.swift
//  Quiz
//
//  Created by spark-06 on 2024/05/10.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!

    var nameText: String = ""
    var score: Int = 0

    //viewDidloaの範囲外の上に、QuizManager.swiftにあるクラスQuizManagerをインスタンス化
    let quizManager = QuizManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.label.text = "\(self.nameText)さん　あなたのスコアは\(self.score)です。"

let numberOfQuizzes = quizManager.quizzes.count

        var text = ""
        switch self.score {
        case 0:
            text = "\n\n頑張りましょう"
        case 1...2:
            text = "動物に関してあまり興味はないでしょうか？\n\nもっと頑張りましょう！"
        case 3...numberOfQuizzes - 1:
            text = "動物にはかなり詳しい方ですね！\n\nもう少しです！"
        case numberOfQuizzes:
            text = "全問正解です！\n\nおめでとうございます！"
        default:
            break
        }
        self.textView.text = text   
    }
    
    @IBAction func pushResultButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated:  true)
    }

}
