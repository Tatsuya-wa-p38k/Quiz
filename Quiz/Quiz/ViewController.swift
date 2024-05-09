
//
//  ViewController.swift
//  aaa
//
//  Created by spark-06 on 2024/05/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
<<<<<<< HEAD
<<<<<<< HEAD

    //下記の右辺はクラスと呼ばれる
=======
    @IBOutlet weak var nameTextField: UITextField!
>>>>>>> develop

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
<<<<<<< HEAD
<<<<<<< HEAD

    }
=======
    
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

=======
>>>>>>> develop
=======

>>>>>>> develop
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let quizViewController = segue.destination as? QuizViewController {
            if let text = self.nameTextField.text {
                quizViewController.nameText = text
            }
        }
    }

    @IBAction func pressButton(_ sender: Any) {

    }


}

