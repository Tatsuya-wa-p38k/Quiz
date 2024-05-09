//
//  Quiz.swift
//  Quiz
//
//  Created by spark-06 on 2024/05/09.
//

import UIKit

class Quiz {
    let text: String
    let correctAnswer: Bool
    let imageName:String

    //initは初期化という意味
    init(text: String, correctAnswer: Bool, imageName: String) {
        self.text = text
        self.correctAnswer = correctAnswer
        self.imageName = imageName
    }
}
