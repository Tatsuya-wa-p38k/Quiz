//
//  QuizManager.swift
//  Quiz
//
//  Created by spark-06 on 2024/05/09.
//

import UIKit

class QuizManager {
    var quizzes: [Quiz]
    var currentIndex: Int //現在何問目なのか
    var score: Int

    enum Status {
        case inAnswer
        case done
    }
    var status: Status

    init() {
        quizzes = []
        //問題文、正解、画像名でクイズを作成
        quizzes.append(Quiz(text: "人間を超でっかいネコだと思っている？", correctAnswer: true, imageName: "cat"))
        quizzes.append(Quiz(text: "イヌは食べ物の美味しさを味よりも匂いで判断している？", correctAnswer: true, imageName: "dog"))
        quizzes.append(Quiz(text: "トラのしましま模様は皮膚まで繋がっていない？", correctAnswer: false, imageName: "tiger"))
        quizzes.append(Quiz(text: "クマは走る時に全部の足がバラバラに動いている？", correctAnswer: true, imageName: "bear"))
        quizzes.append(Quiz(text: "パンダのいちばんの鉱物は笹である？", correctAnswer: false, imageName: "panda"))

        currentIndex = 0
        score = 0
        status = .inAnswer
    }

    var currentQuiz: Quiz {
        get {
            //現在のクイズが何問目かを取得します
            return self.quizzes[currentIndex]
        }
    }

    func answerQuiz(answer: Bool) {
        //クイズの解答(correctAnswer)に設定した値と、解答のanswerが同じだったらスコアを１プラスにする
        //今のコーディング規約としてifの()は無い方が望ましい
        if self.currentQuiz.correctAnswer == answer {
            score += 1
        }
    }

    func nextQuiz() {
        //currentquizのカウントがquizzes配列と同じになったら終了する
        if currentIndex < quizzes.count - 1 {
            currentIndex += 1
        } else {
            status = .done
        }
    }

}
