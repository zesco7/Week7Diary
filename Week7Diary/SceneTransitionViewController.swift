//
//  SceneTransitionViewController.swift
//  Week7Diary
//
//  Created by Mac Pro 15 on 2022/08/18.
//

import UIKit

class SceneTransitionViewController: UIViewController {

    let nameButton: UIButton = {
        let view = UIButton()
        view.setTitle("닉네임", for: .normal)
        view.tintColor = .black
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
        nameButton.addTarget(self, action: #selector(nameButtonClicked), for: .touchUpInside)
    }
    
    @objc func nameButtonClicked() {
        present(ProfileViewController(), animated: true)
    }
    
    func configure() {
        view.addSubview(nameButton)
        nameButton.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.center.equalTo(view)
        }
    }
    

}
