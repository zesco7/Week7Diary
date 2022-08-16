//
//  Alert.swift
//  UIFramework
//
//  Created by Mac Pro 15 on 2022/08/16.
//

import UIKit
import Foundation


//Access Control별로 역할범위 구분해보기
extension UIViewController {
    
    open func testOpen() {}
    public func showAlert(title: String, message: String, buttonTitle: String, buttonAction: @escaping((UIAlertAction) -> Void)) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: buttonTitle, style: .default, handler: buttonAction)
        alert.addAction(cancel)
        alert.addAction(ok)
        self.present(alert, animated: true)
    }
    
    internal func testInternal() {}
    
    fileprivate func testFilePrivate() {}
    
    private func testPrivate() {}
    
}
