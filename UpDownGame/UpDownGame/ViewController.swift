//
//  ViewController.swift
//  UpDownGame
//
//  Created by kio on 2021/10/06.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 선택한 랜덤 숫자
    var computerChoice = Int.random(in: 0...10)
    // 내가 선택한 숫자
    var myChoice: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1. 메인레이블에 "선택하세요" 표시
        mainLabel.text = "선택하세요"
        
        // 2. 숫자레이블은 "" 표시
        numberLabel.text = ""
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1. 버튼의 숫자를 가져오기
        guard let numberString = sender.currentTitle else {
            return
        }
        
        // 2. 가져온 숫자 레이블에 표시하기
        numberLabel.text = numberString
        
        // 3. 선택한 숫자를 변수에 저장
        guard let number = Int(numberString) else {
            return
        }
        myChoice = number
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1. 컴퓨터의 숫자와 내가 선택한 숫자를 비교하여 메인레이블에 UP / DOWN / Bingo 표시
    }
 
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1. 메인레이블 "선택하세요" 표시
        // 2. 컴퓨터의 랜덤 숫자를 다시 선택
        // 3. 숫자레이블을 "" (빈문자열)
        
    }
    
    
}

