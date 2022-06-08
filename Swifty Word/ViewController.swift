//
//  ViewController.swift
//  Swifty Word
//
//  Created by TheGIZzz on 7/6/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    var clueLabel: UILabel!
    var scoreLabel: UILabel!
    var answerLabel: UILabel!
    var currentAnswer: UITextField!
    var letterButtons = [UIButton]()
    
    override func loadView() {
        super.loadView()
        
        view = UIView()
        view.backgroundColor = .white
        
        scoreLabel = UILabel()
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.text = "Score: 0"
        scoreLabel.textAlignment = .right
        view.addSubview(scoreLabel)
        
        clueLabel = UILabel()
        clueLabel.translatesAutoresizingMaskIntoConstraints = false
        clueLabel.font = UIFont.systemFont(ofSize: 24)
        clueLabel.text = "Clues"
        clueLabel.numberOfLines = 0
        clueLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(clueLabel)
        
        answerLabel = UILabel()
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.font = UIFont.systemFont(ofSize: 24)
        answerLabel.text = "Answer"
        answerLabel.numberOfLines = 0
        answerLabel.textAlignment = .right
        answerLabel.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(answerLabel)
        
        currentAnswer = UITextField()
        currentAnswer.translatesAutoresizingMaskIntoConstraints = false
        currentAnswer.font = UIFont.systemFont(ofSize: 44)
        currentAnswer.placeholder = "Tap letters to guess"
        currentAnswer.textAlignment = .center
        currentAnswer.isUserInteractionEnabled = false
        view.addSubview(currentAnswer)
        
        let sumbit = UIButton(type: .system)
        sumbit.translatesAutoresizingMaskIntoConstraints = false
        sumbit.setTitle("SUBMIT", for: .normal)
        view.addSubview(sumbit)
        
        let clear = UIButton(type: .system)
        clear.translatesAutoresizingMaskIntoConstraints = false
        clear.setTitle("CLEAR", for: .normal)
        view.addSubview(clear)
        
        let buttonsView = UIView()
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonsView)
        
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            scoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),

            clueLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            clueLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 100),
            clueLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.6, constant: -100),
            
            answerLabel.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor),
            answerLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -100),
            answerLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.4, constant: -100),
            
            answerLabel.heightAnchor.constraint(equalTo: clueLabel.heightAnchor),
            
            currentAnswer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            currentAnswer.topAnchor.constraint(equalTo: clueLabel.bottomAnchor, constant: 20),
            currentAnswer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            
            sumbit.topAnchor.constraint(equalTo: currentAnswer.bottomAnchor),
            sumbit.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
            sumbit.heightAnchor.constraint(equalToConstant: 44),
            
            clear.centerYAnchor.constraint(equalTo: sumbit.centerYAnchor),
            clear.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
            clear.heightAnchor.constraint(equalToConstant: 44),
            
            buttonsView.widthAnchor.constraint(equalToConstant: 750),
            buttonsView.heightAnchor.constraint(equalToConstant: 320),
            buttonsView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonsView.topAnchor.constraint(equalTo: sumbit.bottomAnchor, constant: 20),
            buttonsView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20)
        ])
        
        let width = 150
        let height = 80
        
        for row in 0..<4 {
            for column in 0..<5 {
                let letterButton = UIButton(type: .system)
                letterButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)
                letterButton.setTitle("WWW", for: .normal)
                
                let frame = CGRect(x: column * width, y: row * height, width: width, height: height)
                letterButton.frame = frame
                
                buttonsView.addSubview(letterButton)
                letterButtons.append(letterButton)
            }
        }
        
        clueLabel.backgroundColor = .red
        answerLabel.backgroundColor = .blue
        buttonsView.backgroundColor = .green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

