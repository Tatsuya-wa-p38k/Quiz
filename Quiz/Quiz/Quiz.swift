
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
