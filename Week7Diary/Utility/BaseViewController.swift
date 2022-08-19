//
//  File.swift
//  Week7Diary
//
//  Created by Mac Pro 15 on 2022/08/19.
//

import UIKit
import SnapKit

class BaseViewController: SceneTransitionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configure()
        setConstraints()
    }
}

func configure() { }

func setConstraints() { }

func showAlertMessage(title: String, button: String) {
    let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
    let ok = UIAlertAction(title: button, style: .cancel)
    alert.addAction(ok)
    present(alert, animated: true)
}
