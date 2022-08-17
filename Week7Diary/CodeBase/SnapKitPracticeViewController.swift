//
//  SnapKitPracticeViewController.swift
//  Week7Diary
//
//  Created by Mac Pro 15 on 2022/08/17.
//

import UIKit

class SnapKitPracticeViewController: UIViewController {
    
    let profilePhoto = UIImageView()
    let profileName = UITextField()
    let talkToMyselfIcon = UIImageView()
    let talkToMyselfTitle = UITextField()
    let profileEditingIcon = UIImageView()
    let profileEditingTitle = UITextField()
    let kakaoStoryIcon = UIImageView()
    let kakaoStoryTitle = UITextField()
    
    
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
        
        [profilePhoto, profileName, talkToMyselfIcon, talkToMyselfTitle, profileEditingIcon, profileEditingTitle, kakaoStoryIcon, kakaoStoryTitle].forEach {
            view.addSubview($0)
        }
        
        profilePhoto.layer.borderWidth = 1
        profilePhoto.layer.borderColor = UIColor.black.cgColor
        profilePhoto.layer.cornerRadius = 40
        profilePhoto.contentMode = .scaleAspectFill
        profilePhoto.snp.makeConstraints { make in
            make.topMargin.equalTo(450)
            make.centerX.equalTo(view)
            make.width.equalTo(100)
            make.height.equalTo(view).multipliedBy(0.1)
        }
        
        profileName.text = "프로필 이름입니다."
        profileName.snp.makeConstraints { make in
            make.top.equalTo(profilePhoto.snp.bottom).offset(1)
            make.centerX.equalTo(view)
            make.height.equalTo(view).multipliedBy(0.1)
        }
        
        talkToMyselfIcon.image = UIImage(systemName: "star.fill")
        talkToMyselfIcon.snp.makeConstraints { make in
            make.top.equalTo(profileName.snp.bottom).offset(1)
            make.leadingMargin.equalTo(50)
            make.width.equalTo(50)
            make.height.equalTo(view).multipliedBy(0.1)
        }
        
        talkToMyselfTitle.text = "나와의 채팅"
        talkToMyselfTitle.snp.makeConstraints { make in
            make.top.equalTo(talkToMyselfIcon.snp.bottom).offset(1)
            make.leadingMargin.equalTo(50)
            //make.center.equalTo(talkToMyselfIcon.snp.bottom).offset(1)
        }
        
        
        
    }
}
