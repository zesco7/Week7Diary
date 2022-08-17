//
//  CodeSnap2ViewController.swift
//  Week7Diary
//
//  Created by Mac Pro 15 on 2022/08/17.
//

import UIKit
import SnapKit

class CodeSnap2ViewController: UIViewController {

    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()

    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        [redView, blackView, purpleView].forEach {
            view.addSubview($0)
        }

        blackView.addSubview(purpleView)
        
        redView.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(200)
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
        }
        
        //equalTo: 동일한 사이즈로 생성해라, offset: x,y축 둘 다 +방향 좌표이동, inset: x,y축 둘 다 -방향 좌표이동
        blackView.snp.makeConstraints { make in
            make.edges.equalTo(redView).inset(50)
        }
        
        purpleView.snp.makeConstraints { make in
            make.edges.equalTo(blackView).inset(50)
        }
    }
    
}
