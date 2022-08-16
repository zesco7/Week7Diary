//
//  FirstViewController.swift
//  Week7Diary
//
//  Created by Mac Pro 15 on 2022/08/16.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var blackView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutorialLabel.numberOfLines = 0
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        tutorialLabel.alpha = 0
        tutorialLabel.text = """
일기 씁시다!
잘 써봅시다!
"""
        blackView.backgroundColor = .black
        blackView.alpha = 0
        
        
        //알파값 0~1이 3초 동안 동작함.
        UIView.animate(withDuration: 6) {
            self.tutorialLabel.alpha = 1
        } completion: { _ in
    //        self.animateBlackView()
            print("complete")
        }
        
    }
    
//    func animateBlackView() {
//        UIView.animate(withDuration: 2) {
//            self.blackViewWidth.constant += 250
//            self.blackView.alpha = 1) { _ in
//                <#code#>
//            }
//        }
        
        
        
    }
