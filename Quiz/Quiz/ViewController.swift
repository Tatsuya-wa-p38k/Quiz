
//
//  ViewController.swift
//  aaa
//
//  Created by spark-06 on 2024/05/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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

