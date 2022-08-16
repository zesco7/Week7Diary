//
//  WalkThroughViewController.swift
//  Week7Diary
//
//  Created by Mac Pro 15 on 2022/08/16.
//

import UIKit

class WalkThroughViewController: UIPageViewController {

    //배열 형태로 뷰컨트롤러를 묶어줌
    var pageViewControllerList: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createPageViewController()
        configurePageViewController()
        
    }
    
    //배열에 뷰컨트롤러 추가
    func createPageViewController() {
        let sb = UIStoryboard(name: "WalkThough", bundle: nil)
        let vc1 = sb.instantiateViewController(withIdentifier: FirstViewController.reuseIdentifier) as! FirstViewController
        let vc2 = sb.instantiateViewController(withIdentifier: SecondViewController.reuseIdentifier) as! SecondViewController
        let vc3 = sb.instantiateViewController(withIdentifier: ThirdViewController.reuseIdentifier) as! ThirdViewController
        pageViewControllerList = [vc1, vc2, vc3]
    }
    
    func configurePageViewController() {
        delegate = self
        dataSource = self
        
        //display
        guard let first = pageViewControllerList.first else { return }
        setViewControllers([first], direction: .forward, animated: true)
    }

}

extension WalkThroughViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        //페이지 전후를 구분하기 위해서는 현재 페이지뷰에 보이는 뷰컨트롤러의 인덱스를 가져와야 한다.
        
        guard let viewControllerIndex = pageViewControllerList.firstIndex(of: viewController) else { return nil }
        
        let previousIndex = viewControllerIndex - 1
        return previousIndex < 0 ? nil : pageViewControllerList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = pageViewControllerList.firstIndex(of: viewController) else { return nil }
        
        let nextIndex = viewControllerIndex + 1
        return nextIndex >= pageViewControllerList.count ? nil : pageViewControllerList[nextIndex]
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pageViewControllerList.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let first = viewControllers?.first, let index = pageViewControllerList.firstIndex(of: first) else { return 0 }
        print("====", index)
        return index
    }
    
    
}
