//
//  CodeSnapViewController.swift
//  Week7Diary
//
//  Created by Mac Pro 15 on 2022/08/17.
//

import UIKit
import SnapKit

class CodeSnapViewController: UIViewController {
    
    let photoImageView = UIImageView()
    let titleTextField = UITextField()
    let dateTextField = UITextField()
    let contentTextView = UITextView()
    
    /*
    let photoImageView2: UIImageView = {
       let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = .lightGray
        return view
    }()
    */
    
    /*
    let titleTextField2: UITextField = {
        print("TEXTFIELD")
        let view = UITextField()
        view.borderStyle = .none
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.placeholder = "제목을 입력해주세요"
        view.textAlignment = .center
        view.font = .boldSystemFont(ofSize: 15)
        return view
    }()
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        
        //for-in 또는 foreach 둘 중 하나로 처리할 수 있다.(순회기능은 동일하나 구현원리나 동작구조가 다름)
        [photoImageView, titleTextField, dateTextField, contentTextView].forEach {
            view.addSubview($0)
        }
        
        photoImageView.backgroundColor = .lightGray
        photoImageView.contentMode = .scaleAspectFill
        photoImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(view).multipliedBy(0.3)
        }
        
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        dateTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.height.equalTo(50)
        }
        
        contentTextView.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
        
        titleTextField.borderStyle = .none
        titleTextField.layer.borderColor = UIColor.black.cgColor
        titleTextField.layer.borderWidth = 1
        titleTextField.placeholder = "제목을 입력해주세요"
        titleTextField.textAlignment = .center
        titleTextField.font = .boldSystemFont(ofSize: 15)
        
    }
    

}
