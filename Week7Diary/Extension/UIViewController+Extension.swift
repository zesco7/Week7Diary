//
//  UIViewController+Extension.swift
//  Week7Diary
//
//  Created by Mac Pro 15 on 2022/08/18.
//

import UIKit

class UIViewController_Extension: UIViewController {

    
    func transitionViewController<T: UIViewController>(storyboard: String, viewController vc: T) {
        
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        guard let controller = sb.instantiateViewController(withIdentifier: String(describing: vc)) as? T else { return }
        
        self.present(controller, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    


}
