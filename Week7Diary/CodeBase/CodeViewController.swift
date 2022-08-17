//
//  CodeViewController.swift
//  Week7Diary
//
//  Created by Mac Pro 15 on 2022/08/17.
//

import UIKit

class CodeViewController: UIViewController {

    /* 스토리보드 없이 코드짜기(CodeBase)
     1. 뷰객체 프로퍼티 선언해서 클래스의 인스턴스를 생성한다.
     2. 명시적으로 루트뷰에 추가하여 화면에 표시될 수 있게 한다.
     3. 뷰객체 크기, 위치, 속성을 정의해준다.
     ->단, 프레임기반 작성은 한계가 있어서 AutoResizingMask, AutoLayout 등장 *NSLayoutConstraint
     
     */
    
    let emailTextField = UITextField() //스토리보드 없이 코드짜기(CodeBase)1
    let passwordTextField = UITextField()
    let signButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(emailTextField) //스토리보드 없이 코드짜기(CodeBase)2
        view.addSubview(passwordTextField)
        view.addSubview(signButton)
        
        //스토리보드 없이 코드짜기(CodeBase)3(Frame기반)
        emailTextField.frame = CGRect(x: 50, y: 50, width: 300, height: 50)
        emailTextField.borderStyle = .line
        emailTextField.backgroundColor = .lightGray
        
        //NSLayoutConstraint기반
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.backgroundColor = .black
        let top = NSLayoutConstraint(item: passwordTextField, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 100)
        top.isActive = true //레이아웃 활성화
        
        NSLayoutConstraint(item: passwordTextField, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 50).isActive = true

        NSLayoutConstraint(item: passwordTextField, attribute: .trailing, relatedBy: .equal, toItem: emailTextField, attribute: .trailing, multiplier: 1, constant: -50).isActive = true

        NSLayoutConstraint(item: passwordTextField, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1, constant: 60).isActive = true
        
        //NSLayoutConstraint+addContraint기반
        let toptop = NSLayoutConstraint(item: passwordTextField, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 100)
        
        let leading = NSLayoutConstraint(item: passwordTextField, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 50)

        let trailing = NSLayoutConstraint(item: passwordTextField, attribute: .trailing, relatedBy: .equal, toItem: emailTextField, attribute: .trailing, multiplier: 1, constant: -50)

        let height = NSLayoutConstraint(item: passwordTextField, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1, constant: 60)
        
        //passwordTextField.addConstraints([toptop, leading, trailing, height])
        
        //NSLayoutAnchor기반
        signButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signButton.widthAnchor.constraint(equalToConstant: 300),
            signButton.heightAnchor.constraint(equalToConstant: 50),
            signButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        
    }
    


}
